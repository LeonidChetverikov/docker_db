# docker_db
clone github repo

Build an image using the Dockerfile at current location:
docker build -t mongodb_container

To start mongo instance:
docker run mongodb_container -it -d

connect to container using mongo:
mongo --host 172.17.0.2
