FROM golang:1.13

WORKDIR /go/src/github.com/awslabs/amazon-ecr-credential-helper

COPY .repo .

RUN make

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
COPY --from=0 /go/src/github.com/awslabs/amazon-ecr-credential-helper/bin/local/docker-credential-ecr-login .

ENTRYPOINT ["/docker-credential-ecr-login"]
