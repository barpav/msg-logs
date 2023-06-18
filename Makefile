up:
	sudo docker-compose up -d --wait
	sudo docker ps
down:
	sudo docker-compose down
	sudo docker ps

push-c:
	sudo docker push ghcr.io/barpav/msg-logs-collector
push-u:
	sudo docker push ghcr.io/barpav/msg-logs-ui
push:
	sudo docker push ghcr.io/barpav/msg-logs-collector
	sudo docker push ghcr.io/barpav/msg-logs-ui