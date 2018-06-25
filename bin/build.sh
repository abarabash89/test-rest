#!/usr/bin/env sh
APP_NAME=$(bin/get-app-name.sh)
docker build -t $APP_NAME .
