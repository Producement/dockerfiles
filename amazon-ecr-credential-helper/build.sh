#!/bin/sh

git clone git@github.com:awslabs/amazon-ecr-credential-helper.git .repo
docker build -t maidok/amazon-ecr-credential-helper:latest .
rm -rf .repo
