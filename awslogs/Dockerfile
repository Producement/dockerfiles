FROM alpine:latest

RUN apk add --update py3-pip python3-dev build-base libffi-dev openssl-dev git
RUN pip3 install --upgrade pip
RUN pip3 install awslogs

RUN mkdir ~/.aws

WORKDIR /app

ENTRYPOINT ["awslogs"]
