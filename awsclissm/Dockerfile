FROM debian:sid-slim

RUN apt-get update && apt-get install -y awscli curl

ENV PKGVER=1.1.50.0
RUN curl https://s3.amazonaws.com/session-manager-downloads/plugin/${PKGVER}/ubuntu_64bit/session-manager-plugin.deb --output session-manager-plugin.deb
RUN dpkg -i session-manager-plugin.deb

RUN addgroup --gid 1000 app
RUN adduser --uid 1000 --gid 1000 --disabled-password --gecos "" app

USER app

RUN mkdir ~/.aws

WORKDIR /home/app

ENTRYPOINT ["aws"]
