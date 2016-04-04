#! /bin/bash
PORT=5000
VOLUME_PATH=~/docker-registry-data
docker run -d -p $PORT:5000 --restart=always --name registry \
-v $VOLUME_PATH:/var/lib/registry \
  registry:2


