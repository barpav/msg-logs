FROM docker.elastic.co/kibana/kibana:8.8.1
LABEL org.opencontainers.image.source=https://github.com/barpav/msg-logs
# settings.ndjson must be imported via API after container is started like so:
# curl -H "kbn-xsrf: anything" -F file=@/usr/share/kibana/config/settings.ndjson http://localhost:5601/api/saved_objects/_import
COPY kibana.yml settings.ndjson /usr/share/kibana/config/