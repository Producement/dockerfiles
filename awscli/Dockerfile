FROM alpine:latest

RUN apk add --update py3-pip python3-dev git
RUN pip3 install --upgrade pip
RUN pip3 install awscli --upgrade

RUN addgroup --gid 1000 -S app
RUN adduser --uid 1000 -S -D -h /home/app app app

USER app

RUN mkdir ~/.aws

WORKDIR /home/app

ENTRYPOINT ["aws"]
