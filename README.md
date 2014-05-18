docker-postgresql
=================

PostgreSQL for Docker. (Forked from [orchardup/postgresql](https://index.docker.io/u/orchardup/postgresql/). Thanks!)

    $ docker run -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test mazzolino/postgresql-9.3
    da809981545f
    $ psql -h localhost -U test test
    Password for user test:
    psql (9.1.9, server 9.1.3)
    Type "help" for help.

    test=#

(Example assumes PostgreSQL client is installed on Docker host.)

