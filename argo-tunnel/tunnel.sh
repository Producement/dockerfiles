#!/bin/bash

if [[ -z "${SERVICE_HOST}" ]]; then
  echo "SERVICE_HOST must be defined!"
  exit 1
fi

if [[ -z "${SERVICE_URL}" ]]; then
  echo "SERVICE_URL must be defined!"
  exit 1
fi

envsubst < /etc/cloudflared/config.yaml.template > /etc/cloudflared/config.yaml
supervisord --configuration /etc/supervisord.conf