#!/bin/bash -e

set -x

docker-compose build
docker-compose up --remove-orphans
