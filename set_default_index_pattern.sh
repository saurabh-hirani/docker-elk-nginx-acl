#!/bin/bash

jq_path=$(which jq)
if ! [[ -f $jq_path ]]; then
  echo "ERROR: jq not installed. Either install it and rerun or set default index through UI"
  exit 1
fi

id=$(curl -u admin:admin http://localhost:8082/api/saved_objects/index-pattern | jq  -r -c '.saved_objects | .[] | select(.attributes.title | contains("mov")) | .id')

curl -XPOST -u admin:admin http://localhost:8082/api/kibana/settings/defaultIndex -H "Content-Type: application/json" -H "kbn-xsrf:true" -d"
{
  \"value\":\"$id\"
}"
