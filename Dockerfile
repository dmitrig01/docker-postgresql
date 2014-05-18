FROM stackbrew/ubuntu:14.04
MAINTAINER Martin Honermeyer "maze@strahlungsfrei.de"

RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get install -y -q postgresql-9.3 postgresql-contrib-9.3 postgresql-9.3-postgis-2.1 libpq-dev sudo && apt-get clean

# Remove default database cluster generated on package install (because it uses C locale)
RUN pg_dropcluster 9.3 main

ADD postgresql.conf /etc/postgresql/9.3/main/postgresql.conf
ADD pg_hba.conf /etc/postgresql/9.3/main/pg_hba.conf
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/postgresql"]
EXPOSE 5432
CMD ["/usr/local/bin/run"]
