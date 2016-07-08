# docker pull gliderlabs/logspout:latest
# docker run --name="logspout" --volume=/var/run/docker.sock:/var/run/docker.sock  gliderlabs/logspout
docker run --name="logspout" --restart=always -d -e LOGSPOUT=ignore --privileged -v /var/run/docker.sock:/var/run/docker.sock -e DEBUG=true --publish=0.0.0.0:8181:80 gliderlabs/logspout:master syslog://0.0.0.0:5000 
