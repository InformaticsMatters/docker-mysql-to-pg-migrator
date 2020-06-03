#!/bin/bash
#
# Load Postgres:
# Purpose: Load Postgres database from existing Mysql database
#
# Parameters:
# `POSTGRESQL_USER`
# `POSTGRESQL_PASSWORD`
# `POSTGRESQL_HOST`
# `POSTGRESQL_PORT`
# `POSTGRESQL_DATABASE`
#
# Process:
# 1. Identify mysql export directory with: mysql> SHOW VARIABLES LIKE "secure_file_priv";
# 2. Create a dump of data files in tab separated format (and separate ddl files)
#     docker exec -i mysql-5-7-30 sh -c 'mysqldump
#         --compatible=postgres mysql -T/var/lib/mysql-files -uroot -p"1234"'
# 3. Copy files from mysql-files to the sql /import
# 4. Set up database credentials in userpass
# 5. Run this script.
#

CHARSET="utf-8" #your current database charset
DATADIR="/import/sql"
#DATADIR="/home/duncan/Documents/dev/InfoMat/MySQLdatabasemigration/script/sql"
DATABASE=$POSTGRESQL_DATABASE

export PGPASSWORD=$POSTGRESQL_PASSWORD

echo "Initial Checks"

# Create Process Base directories if they don't exist
if [ ! -d $DATADIR ]; then
    echo "Import directory must be set with expected output from mysqldump command"
    echo "mysqldump --compatible=postgres mysql -T/var/lib/mysql-files -<user> -p<pwrd>"
    echo "content of mysql-files directory"
    exit 1
fi

# tmp_tab does not exist in the new database - remove from the list of tables to load
echo "tmp_tab does not exist in the new database - remove from the list of tables to load"
mv $DATADIR/tmp_tab.txt $DATADIR/tmp_tab.rej

echo "Initial Checks OK"

#  Remove constraints if they exist.

echo "Adjust Tables (incl. sequence information)"

psql \
    -X \
    -U $POSTGRESQL_USER \
    -h $POSTGRESQL_HOST \
    -p $POSTGRESQL_PORT \
    -f database-adjustments-pre.sql \
    --echo-all \
    --set AUTOCOMMIT=on \
    --set ON_ERROR_STOP=on \
    $DATABASE

if [ $? -ne 0 ]; then
    echo "Pre-load adjustments failed, fault:" 1>&2
    exit $?
fi

echo "Loading Tables Starting"

for file in $DATADIR/*.txt; do

    read lines filename <<< $(wc -l $file)
    echo "lines=$lines filename=$filename"

    TMP=${file%.*}
    TABLE=${TMP##*/}
    echo "preparing $TABLE"

    #replace carriage return
    sed 's/\r/\\r/g' $file > /tmp/$TABLE.export.tmp

    #cleanup non-printable and wrong sequences for current charset
    iconv -t $CHARSET -f $CHARSET -c < /tmp/$TABLE.export.tmp > /tmp/$TABLE.export.tmp.out

    echo "Deleting data from $TABLE (only reload)"

#  For testing

    psql \
        -X \
        -U $POSTGRESQL_USER \
        -h $POSTGRESQL_HOST \
        -p $POSTGRESQL_PORT \
        --echo-all \
        --set AUTOCOMMIT=on \
        --set ON_ERROR_STOP=on \
        -c "delete from $TABLE;" \
        $DATABASE

    if [ $? -ne 0 ]; then
        echo "delete data failed, fault:" 1>&2
        exit $?
    fi

#  psql $DBNAME -c "copy $TABLE from '/tmp/$TABLE.export.tmp.out'"

    echo "Loading data from $TABLE"

    psql \
        -X \
        -U $POSTGRESQL_USER \
        -h $POSTGRESQL_HOST \
        -p $POSTGRESQL_PORT \
        --echo-all \
        --set AUTOCOMMIT=on \
        --set ON_ERROR_STOP=on \
        -c "\COPY $TABLE from '/tmp/$TABLE.export.tmp.out';" \
        $DATABASE

    if [ $? -ne 0 ]; then
        echo "load data failed, fault:" 1>&2
        exit $?
    fi

    #clean up
    rm /tmp/$TABLE.export.tmp /tmp/$TABLE.export.tmp.out
done

#  Update sequence and anything else required if needed.

echo "Adjust Tables (incl. sequence information)"

psql \
    -X \
    -U $POSTGRESQL_USER \
    -h $POSTGRESQL_HOST \
    -p $POSTGRESQL_PORT \
    -f database-adjustments-post.sql \
    --echo-all \
    --set AUTOCOMMIT=on \
    --set ON_ERROR_STOP=on \
    $DATABASE

if [ $? -ne 0 ]; then
    echo "Post load Adjustments failed, fault:" 1>&2
    exit $?
fi