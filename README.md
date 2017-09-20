squid-docker-simple-auth
========================

A simple (and fragile) Dockerfile for launching an authenticated squid proxy.

The user must specify authentication credentials via the following environment variables:

```
SQUID_USERNAME=foo
SQUID_PASSWORD=bar
```

An example invocation would be:

```
docker run -e SQUID_USERNAME=foo -e SQUID_PASSWORD=bar -p 3128:3128 robhaswell/squid-authenticated
```

Or in docker-compose:

```
version: "2"
services:
  squid:
    build: https://github.com/jsmootiv/squid-docker-simple-auth.git#master
    build: .
    ports:
      - 3128:3128
    environment:
      - SQUID_USERNAME=foo
      - SQUID_PASSWORD=bar
```

Details
=======

Environment variables
---------------------

* SQUID_USERNAME
* SQUID_PASSWORD

Ports
-----

* 3128

Volumes
-------

* `/var/log/squid3`

Ideas for Improvement
=====================

* Output logs to stdout.
* The range of authentication options could be expanded through more configuration options.
* Supply a full configuration file that has been well considered instead of hacking up Ubuntu's defaults.
