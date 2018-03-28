# docker_db
clone github repo

Build an image using the Dockerfile at current location:
docker build -t mongodb_container

To start mongo instance:
docker run mongodb_container -it -d

connect to container using mongo:
mongo --host 172.17.0.2

Run the PostgreSQL server container (in the foreground):

$ docker run --rm -P --name pg_test eg_postgresql

Containers can be linked to another container’s ports directly using -link remote_name:local_alias in the client’s docker run. This sets a number of environment variables that can then be used to connect:

$ docker run --rm -t -i --link pg_test:pg eg_postgresql bash

Connecting from your host system
Assuming you have the postgresql-client installed, you can use the host-mapped port to test as well. You need to use docker ps to find out what local host port the container is mapped to first:

$ docker ps

CONTAINER ID        IMAGE                  COMMAND                CREATED             STATUS              PORTS                                      NAMES
5e24362f27f6        eg_postgresql:latest   /usr/lib/postgresql/   About an hour ago   Up About an hour    0.0.0.0:49153->5432/tcp                    pg_test

$ psql -h localhost -p 49153 -d docker -U docker --password

Using the container volumes
You can use the defined volumes to inspect the PostgreSQL log files and to backup your configuration and data:

$ docker run --rm --volumes-from pg_test -t -i busybox sh

/ # ls
bin      etc      lib      linuxrc  mnt      proc     run      sys      usr
dev      home     lib64    media    opt      root     sbin     tmp      var
/ # ls /etc/postgresql/9.3/main/
environment      pg_hba.conf      postgresql.conf
pg_ctl.conf      pg_ident.conf    start.conf
/tmp # ls /var/log
ldconfig    postgresql

