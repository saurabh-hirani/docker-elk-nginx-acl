#!/bin/bash

set -x
data_dir="./data/misc/load"

curl https://download.elastic.co/demos/kibana/gettingstarted/shakespeare_6.0.json -o $data_dir/01-shakespeare/shakespeare_6.json

curl https://download.elastic.co/demos/kibana/gettingstarted/logs.jsonl.gz -o $data_dir/02-logs/logs.jsonl.gz
cd $data_dir/02-logs/
gunzip logs.jsonl.gz
cd -

curl https://download.elastic.co/demos/kibana/gettingstarted/accounts.zip -o $data_dir/03-accounts/accounts.zip
cd $data_dir/03-accounts/
unzip accounts.zip
cd -
