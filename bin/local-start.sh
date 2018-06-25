#!/usr/bin/env sh

echo "ENV:$NODE_ENV"

if [ $NODE_ENV="development" ]
then
    ./node_modules/.bin/nodemon src/index.js
else
    node src/index.js
fi