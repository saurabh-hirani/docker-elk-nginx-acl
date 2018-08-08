#!/bin/bash -e
curl -H 'Content-Type: application/x-ndjson' -XPOST 'http://localhost:9200/shakespeare/doc/_bulk?pretty' --data-binary @shakespeare_6.0.json
