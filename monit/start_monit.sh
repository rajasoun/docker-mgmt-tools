docker run --name="monit" --restart=always -d -p 12812:2812 --privileged -v /var/run/docker.sock:/var/run/docker.sock rajasoun/monit:latest
