FROM ubuntu
MAINTAINER "Andrew Rothstein" andrew.rothstein@gmail.com

RUN apt-get update
RUN apt-get install -y git python
RUN git clone https://github.com/mkorenkov/http-replicator.git

RUN mkdir /tmp/cache

CMD ["/http-replicator/http-replicator", "-p", "8888", "-r", "/tmp/cache"]

EXPOSE 8888
