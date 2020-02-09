FROM alpine:latest

RUN apk add --update py3-pip python3-dev git
RUN pip3 install --upgrade pip
RUN pip3 install awscli --upgrade

RUN mkdir ~/.aws

WORKDIR /app

ENTRYPOINT ["aws"]
