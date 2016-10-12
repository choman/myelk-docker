#!/bin/bash


which docker-compose > /dev/null
rval=$?

if [ $rval -eq 1 ]; then
    echo using: docker
    cd elk-docker
    docker build -t elk .
else
    echo using: docker-compose
    docker-compose build
fi
