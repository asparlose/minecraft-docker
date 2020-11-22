FROM alpine

RUN apk update \
 && apk add openjdk11-jre \
 && rm -rf /var/cache/apk/*

ADD https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar /root/server.jar

WORKDIR /root/server-data
VOLUME [ "/root/server-data" ]
EXPOSE 25565

CMD [ "java", "-jar", "/root/server.jar" ]
