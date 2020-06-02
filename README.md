# docker-mysql-to-pg-migrator
A container image to migrate MySQL data into PostgreSQL.

This container expects a volume to be mounted at `/import`
that contains the exported MySQL data. The `docker-entrypoint`
will use this data and then employ `psql` to import the data into
the PostgreSQL database using the following environment variables: -

- `POSTGRESQL_USER`
- `POSTGRESQL_PASSWORD`
- `POSTGRESQL_HOST`
- `POSTGRESQL_PORT`
- `POSTGRESQL_DATABASE`

For deployment see our peer [Ansible] repository.

---

[ansible]: https://github.com/InformaticsMatters/docker-mysql-to-pg-migrator-ansible
