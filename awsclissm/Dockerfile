FROM debian:sid-slim

RUN apt-get update && apt-get install -y awscli curl

ENV PKGVER=1.1.50.0
RUN curl https://s3.amazonaws.com/session-manager-downloads/plugin/${PKGVER}/ubuntu_64bit/session-manager-plugin.deb --output session-manager-plugin.deb
RUN dpkg -i session-manager-plugin.deb

RUN mkdir ~/.aws

WORKDIR /app

ENTRYPOINT ["aws"]
