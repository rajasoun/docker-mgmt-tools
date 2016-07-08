# base image

FROM alpine

# grab ca-certificates and nginx
RUN apk update && apk add ca-certificates nginx

# expose ports 80 and 443
EXPOSE 80 443

# start up nginx
CMD ["nginx", "-g", "daemon off;"]
