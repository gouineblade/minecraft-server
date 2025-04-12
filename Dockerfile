FROM openjdk:21
RUN mkdir /server
WORKDIR /server
COPY minecraft-server.jar /server/
CMD ["sh", "-c", "echo 'eula=true' > /server/eula.txt && java -Xms$XMS -Xmx$XMX -jar minecraft-server.jar nogui"]