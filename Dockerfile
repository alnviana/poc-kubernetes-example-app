FROM mendhak/http-https-echo@sha256:43bdfe52abc5baed00706337efe26825c86360c6b9b74659a72a9aa2fca8bd55

COPY . .

USER root
RUN apk add --no-cache mysql-client
RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*
USER node
