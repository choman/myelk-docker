#!/bin/bash

sudo openssl req -x509 -batch -nodes -subj "/CN=elk/" \
    -days 3650 -newkey rsa:2048 \
    -keyout elk-docker/logstash-beats.key -out elk-docker/logstash-beats.crt

