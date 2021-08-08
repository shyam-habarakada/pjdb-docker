# pjdb-docker

A docker container with pjdb https://github.com/hokuda/pjdb

# usage

- Clone the repo
- Run `docker build . -t pjdb` insite the repo root directory
- Run `docker -it pjdb` to test pjdb in the container

To debug another container that is exposing JDB ports, add `pjdb` to a docker-network that has those containers and attach to those using their hostnames.
