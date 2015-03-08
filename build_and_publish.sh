#!/bin/bash

docker build -t cloudlauncher/docker-hub-nginx-cache-proxy . \
  && docker push cloudlauncher/docker-hub-nginx-cache-proxy