FROM debian:sid

ENV LANG C.UTF-8

RUN apt-get update && apt-get install openjdk-12-jdk -y

ENV JAVA_HOME  /usr/lib/jvm/java-12-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

CMD ["jshell"]