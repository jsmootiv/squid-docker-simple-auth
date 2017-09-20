FROM ubuntu:17.04
MAINTAINER Rob Haswell <me@robhaswell.co.uk>

RUN mkdir /proxy
WORKDIR /proxy
RUN apt-get -qqy update
RUN apt-get -qqy upgrade
RUN apt-get -qqy install apache2-utils squid3

COPY ./squid.conf /etc/squid
COPY ./run.sh .

RUN touch /etc/squid/squid_passwd
CMD ["/proxy/run.sh"]
