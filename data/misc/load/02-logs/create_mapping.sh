#!/bin/bash
curl -H 'Content-Type: application/json' -XPUT 'http://localhost:9200/logstash-2015.05.18?pretty' -d '{ "mappings": { "log": { "properties": { "geo": { "properties": { "coordinates": { "type": "geo_point" } } } } } } }'
curl -H 'Content-Type: application/json' -XPUT 'http://localhost:9200/logstash-2015.05.19?pretty' -d '{ "mappings": { "log": { "properties": { "geo": { "properties": { "coordinates": { "type": "geo_point" } } } } } } }'
curl -H 'Content-Type: application/json' -XPUT 'http://localhost:9200/logstash-2015.05.20?pretty' -d '{ "mappings": { "log": { "properties": { "geo": { "properties": { "coordinates": { "type": "geo_point" } } } } } } }'
