FROM ghcr.io/lavalink-devs/lavalink:4-alpine

USER root

RUN apk add --no-cache wget

# ✅ tạo đúng structure Lavalink v4
RUN mkdir -p /opt/Lavalink/plugins

# ✅ youtube plugin
RUN wget -O /opt/Lavalink/plugins/youtube-plugin.jar \
https://maven.lavalink.dev/releases/dev/lavalink/youtube/youtube-plugin/1.18.0/youtube-plugin-1.18.0.jar

# ✅ QUAN TRỌNG NHẤT
ENV LAVALINK_PLUGIN_DIR=/opt/Lavalink/plugins

COPY application.yml /opt/Lavalink/application.yml

USER 322
