#!/usr/bin/env sh

APP_NAME=$(bin/get-app-name.sh)
CONTAINER_ID=$(docker ps -q -f ancestor=$APP_NAME)
docker container stop $CONTAINER_ID
