ARG from_tag="13"
FROM postgres:$from_tag

LABEL maintainer="dpeacock@informaticsmatters.com"

COPY docker-entrypoint.sh .

CMD ["./docker-entrypoint.sh"]
