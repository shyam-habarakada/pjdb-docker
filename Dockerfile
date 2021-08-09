FROM fedora:34

RUN dnf update -y && \
    dnf install -y python3 python3-pip git autoconf automake java-1.8.0-openjdk-devel && \
    dnf groupinstall -y "Development Tools" "Development Libraries"

RUN mkdir -p /usr/src/pjdb-docker

WORKDIR /usr/src/pjdb-docker

COPY install.sh .

RUN /usr/src/pjdb-docker/install.sh


