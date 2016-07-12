FROM alpine:3.4

MAINTAINER Raja.S <rajasoun@icloud.com>

LABEL Description="Ansible Control Center For Openstack" Version="0.1"

# Alpine-based installation
# #########################
RUN apk update
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    py-setuptools \
    ca-certificates \
    build-base \
    libffi-dev \
    openssl-dev \
    gcc \
    musl-dev \
    linux-headers \
  && pip install --upgrade --no-cache-dir ansible==2.0.2 \
  && pip install --upgrade --no-cache-dir pip setuptools python-openstackclient shade \ 
  && apk del gcc musl-dev linux-headers \
  && rm -rf /var/cache/apk/* 

# Add a volume so that a host filesystem can be mounted 
# Ex. `docker run -v $PWD:/ck rajasoun/ck-cc-alpine`
VOLUME ["/ck"]

RUN mkdir /etc/openstack
RUN mkdir /etc/ansible


# Default is to start a shell.  A more common behavior would be to override
# the command when starting.
# Ex. `docker run -ti rajasoun/ck-cc-alpine echo hostname`
CMD ["/bin/sh"]


