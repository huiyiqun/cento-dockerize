FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl lsb-release

RUN curl -L http://apt-stable.ntop.org/16.04/all/apt-ntop-stable.deb -O && dpkg -i apt-ntop-stable.deb

RUN apt-get update && apt-get install -y cento

ENTRYPOINT ["/usr/local/bin/cento"]
