#!/bin/bash -e
set -x

curl --head http://localhost:9200

cd ./data/misc/load/01-shakespeare/
./create_mapping.sh
./load_data.sh > /dev/null
cd -

cd ./data/misc/load/02-logs/
./create_mapping.sh
./load_data.sh > /dev/null
cd -

cd ./data/misc/load/03-accounts/
./load_data.sh > /dev/null
cd -

cd ./data/misc/load/04-movies/
./load_data.sh > /dev/null
cd -
