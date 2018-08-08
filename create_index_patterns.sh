#!/bin/bash -e
set -x

curl -XPOST -u admin:admin http://localhost:8082/api/saved_objects/index-pattern -H "Content-Type: application/json" -H "kbn-xsrf: true" -d'
{
	"attributes": {
		"title": "shakes*"
	}
}'


curl -XPOST -u admin:admin http://localhost:8082/api/saved_objects/index-pattern -H "Content-Type: application/json" -H "kbn-xsrf: true"  -d'
{
	"attributes": {
		"title": "bank*"
	}
}'


curl -XPOST -u admin:admin http://localhost:8082/api/saved_objects/index-pattern -H "Content-Type: application/json" -H "kbn-xsrf: true" -d'
{
	"attributes": {
		"title": "mov*"
	}
}'

curl -XPOST -u admin:admin http://localhost:8082/api/saved_objects/index-pattern -H "Content-Type: application/json" -H "kbn-xsrf:true" -d'
{
  "attributes": { 
    "title":"log*",
    "timeFieldName":"@timestamp"
  }
}'

