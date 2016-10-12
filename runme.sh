#!/bin/bash


which docker-compose > /dev/null
rval=$?

if [ $rval -eq 1 ]; then
    echo using: docker
    docker run --rm --restart yes -p 5601:5601 -p 9200:9200 \
                                  -p 5044:5044 -p 5000:5000 -it --name elk elk

else
    echo using: docker-compose
    docker-compose up --no-recreate -d
fi

