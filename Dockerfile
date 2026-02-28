FROM ghcr.io/lavalink-devs/lavalink:4-alpine

USER root

RUN apk add --no-cache wget \
 && mkdir -p /opt/Lavalink/plugins

# Youtube plugin (Maven - ổn định nhất)
RUN wget -O /opt/Lavalink/plugins/youtube-plugin.jar \
https://maven.lavalink.dev/releases/dev/lavalink/youtube/youtube-plugin/1.18.0/youtube-plugin-1.18.0.jar

# ⭐ QUAN TRỌNG NHẤT
COPY application.yml /opt/Lavalink/application.yml

ENV SERVER_PORT=8080
ENV SERVER_ADDRESS=0.0.0.0

USER 322
