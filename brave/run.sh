#!/bin/sh

docker run --net=host --volume="$HOME/.Xauthority:/home/brave/.Xauthority:rw" -e DISPLAY --privileged --rm -it maidok/brave:latest
