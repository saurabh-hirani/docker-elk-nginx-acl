#!/bin/bash
curl -H 'Content-Type: application/json' -XPUT  'http://localhost:9200/shakespeare?pretty' -d '{ "mappings": { "doc": { "properties": { "speaker": {"type": "keyword"}, "play_name": {"type": "keyword"}, "line_id": {"type": "integer"}, "speech_number": {"type": "integer"} } } } }'
