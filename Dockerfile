ARG from_tag="13"
FROM postgres:$from_tag

LABEL maintainer="dpeacock@informaticsmatters.com"

COPY docker-entrypoint.sh .
COPY database-adjustments-pre.sql .
COPY database-adjustments-post.sql .

CMD ["./docker-entrypoint.sh"]
