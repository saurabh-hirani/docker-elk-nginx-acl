curl -H 'Content-Type: application/x-ndjson' -XPOST 'localhost:9200/movies/list/_bulk?pretty' --data-binary @movies.json
