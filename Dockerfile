FROM alpine

RUN apk update \
 && apk add openjdk8-jre \
 && rm -rf /var/cache/apk/*

ADD https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar /root/server.jar

WORKDIR /root/server-data
VOLUME [ "/root/server-data" ]
EXPOSE 25565

CMD [ "java", "-jar", "/root/server.jar" ]
