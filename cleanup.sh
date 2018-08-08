#!/bin/bash -e

echo "STATUS: Stopping containers"
docker-compose stop

echo "STATUS: Removing containers"
docker rm $(docker ps -a -q --filter='name=dockerelk_')

echo "STATUS: Optional - delete all files in $(pwd)/data/elasticsearch/*"
