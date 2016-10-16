# Dockerized environment for mongo database

The main docker image is built from the database folder.
It follows the creation of a mongo db container from [mongo official image](https://hub.docker.com/_/mongo/) version 3.3.

### How to use

To start a container simply execute the shell script _start-mongo_.

The port exposed is `27017` (default mongo port).

* To use mongo:

`mongo --port 27017`

* To use mongo with a docker machine:

`mongo --port 27017 --host [ip address from docker-machine ip VM_NAME]`
