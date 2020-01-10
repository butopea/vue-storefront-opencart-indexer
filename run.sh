#!/bin/sh
# If you want to erase the existing ElasticSearch data: ./run.sh erase
if [ "$1" = 'erase' ]; then
  curl 'http://localhost:9200/*' -X DELETE -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36' -H 'Sec-Fetch-Mode: cors' -H 'Content-Type: application/json' --data-binary '{}' --compressed
fi
cd src
node index.js new
node index.js attributes
node index.js taxrules
node index.js categories
node index.js products
node index.js publish


