#!/usr/bin/env sh
APP_NAME=$(bin/get-app-name.sh)
bin/stop.sh
CMD="docker run
    -e NODE_ENV=development
    -d
    -p 4000:80
    $APP_NAME"
echo $CMD
$CMD