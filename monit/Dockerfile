# # Dockerfile for monit  
FROM alpine
MAINTAINER Raja.S <rajasoun@icloud.com>

RUN apk update \
    && apk add -U monit \
    && rm -rf /var/cache/apk/*

COPY monitrc /etc/monitrc

RUN chmod 600 /etc/monitrc \
    && mkdir -p /var/lib/monit/events

EXPOSE 2812

CMD ["/usr/bin/monit", "-c", "/etc/monitrc"]

