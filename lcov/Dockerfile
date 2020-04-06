FROM alpine:edge

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk update
RUN apk add lcov

ENTRYPOINT ["lcov"]
CMD ["--help"] 
