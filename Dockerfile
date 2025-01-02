FROM eclipse-temurin:21-alpine

ENV InitRAM=1g \
    MaxRAM=2g

EXPOSE 25565

HEALTHCHECK --interval=1m --timeout=10s \
  CMD nc -z localhost 25565 || exit 1

RUN mkdir -p /opt/minecraft
ADD configure.sh entrypoint.sh LICENSE /opt/minecraft/

ENV MINECRAFT_VERSION=1.21.4
ENV FABRIC_LOADER_VERSION=0.15.11
ENV INSTALLER_VERSION=1.0.1

RUN wget "https://meta.fabricmc.net/v2/versions/loader/$MINECRAFT_VERSION/$FABRIC_LOADER_VERSION/$INSTALLER_VERSION/server/jar" -O /opt/minecraft/fabric.jar

ENTRYPOINT ["/opt/minecraft/entrypoint.sh"]
