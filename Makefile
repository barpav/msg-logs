up:
	sudo docker-compose up -d --wait
	sudo docker ps
down:
	sudo docker-compose down
	sudo docker ps

build-c:
	sudo docker image rm -f ghcr.io/barpav/msg-logs-collector
	sudo docker build -t ghcr.io/barpav/msg-logs-collector -f collector/Dockerfile ./collector
	sudo docker image ls
build-u:
	sudo docker image rm -f ghcr.io/barpav/msg-logs-ui
	sudo docker build -t ghcr.io/barpav/msg-logs-ui -f ui/Dockerfile ./ui
	sudo docker image ls

push-c:
	sudo docker push ghcr.io/barpav/msg-logs-collector
push-u:
	sudo docker push ghcr.io/barpav/msg-logs-ui
push:
	sudo docker push ghcr.io/barpav/msg-logs-collector
	sudo docker push ghcr.io/barpav/msg-logs-ui