docker run --name="elk_es" --restart=always -d -p 9200:9200 -p 9300:9300  -e LOGSPOUT=ignore  --privileged -v /var/run/docker.sock:/var/run/docker.sock elasticsearch:2.3
docker run --name="elk_kibana" --restart=always -d -p 5601:5601 --link elk_es:elasticsearch -e LOGSPOUT=ignore --privileged -v /var/run/docker.sock:/var/run/docker.sock kibana:4.5
docker create -v /config --name logstash_config busybox;docker cp logstash.conf logstash_config:/config/
docker run --name="elk_logstash" --restart=always -d -p 5000:5000 -p 5000:5000/udp  --link elk_es:elasticsearch -e LOGSPOUT=ignore  --volumes-from logstash_config  --privileged -v /var/run/docker.sock:/var/run/docker.sock logstash:2.3  -f /config/logstash.conf
