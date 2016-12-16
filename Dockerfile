FROM java:8-jdk
MAINTAINER wp_mailbox@163.com
ENV JAVA_OPTS="-Xmx256m -Xms128m -Djava.security.egd=file:/dev/./urandom"
ADD backend.tar /
RUN ls / && echo ----- && ls /config
ENTRYPOINT  java -server -jar $JAVA_OPTS  opentsp-user-web-1.0-SNAPSHOT-boot.jar
 
