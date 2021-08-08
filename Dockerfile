FROM fedora:34

RUN dnf update -y && \
    dnf install -y python3 python3-pip git autoconf automake && \
    dnf groupinstall -y "Development Tools" "Development Libraries"

RUN mkdir -p /usr/src/pjdb

WORKDIR /usr/src/pjdb

COPY install.sh .

RUN /usr/src/pjdb/install.sh


