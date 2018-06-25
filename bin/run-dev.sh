#!/usr/bin/env sh

APP_NAME=$(bin/get-app-name.sh)
bin/stop.sh
DIR=$(pwd)
CMD="docker run
    -d
    -p 4000:80
    -v $DIR/src:/app/src/
    -e NODE_ENV=development
    $APP_NAME"
echo $CMD
$CMD