# docker-mysql-to-pg-migrator
A container image to migrate MySQL data into PostgreSQL.

This container expects a volume to be mounted at `/import`
that contains the exported MySQL data in the format of a tgz file. The file is expected to ba called:
```
fragalysis-prod-dump.tgz
```

The `docker-entrypoint` will use this data and then employ `psql` to import the data into
the PostgreSQL database using the following environment variables: -

- `POSTGRESQL_USER`
- `POSTGRESQL_PASSWORD`
- `POSTGRESQL_HOST`
- `POSTGRESQL_PORT`
- `POSTGRESQL_DATABASE`

To obtain the input data:
- Identify mysql export directory with: mysql> SHOW VARIABLES LIKE "secure_file_priv";
- Create a dump of data files in tab separated format (and separate ddl files) as follows:
```
mysqldump --compatible=postgres mysql -T/var/lib/mysql-files -uroot -p"<password>"
```

For deployment see our peer [Ansible] repository.

---
[ansible]: https://github.com/InformaticsMatters/docker-mysql-to-pg-migrator-ansible


## Constraints

The constraints for the database are dropped before the dataload and recreated afterwards.
For future reference, (Postgres) SQL statements are as follows:

```
SELECT 'ALTER TABLE '||nspname||'.'||relname||' DROP CONSTRAINT IF EXISTS '||conname||';'
FROM pg_constraint
INNER JOIN pg_class ON conrelid=pg_class.oid
INNER JOIN pg_namespace ON pg_namespace.oid=pg_class.relnamespace
ORDER BY CASE WHEN contype='f' THEN 0 ELSE 1 END,contype,nspname,relname,conname;

SELECT 'ALTER TABLE '||nspname||'.'||relname||' ADD CONSTRAINT '||conname||' '|| pg_get_constraintdef(pg_constraint.oid)||';'
FROM pg_constraint
INNER JOIN pg_class ON conrelid=pg_class.oid
INNER JOIN pg_namespace ON pg_namespace.oid=pg_class.relnamespace
ORDER BY CASE WHEN contype='f' THEN 0 ELSE 1 END DESC,contype DESC,nspname DESC,relname DESC,conname DESC;
```
