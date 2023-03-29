#!/bin/bash

# 1. Data API App Id
appid="data-matwr"

# 2. API Key
apikey="v77OlVOstnbt92l4NxQPAOk3bZ1rB6amiKDjSoCI5wAc6PV6TqL5sNOZSY09O58T"

# 3. Base URL
baseurl="https://data.mongodb-api.com/app/$appid/endpoint/data/v1"

# 4. Endpoint
endpoint="/action/findOne"

# 5. dataSource
dataSource="Cluster0"

# 6. database
database="social_butterfly"

# 7. collection
collection="flutters"

# 8. filter
#filter='{}'
filter='{
  "body": {
    "$regex": "dad-a-base", 
    "$options": "i"
  } 
}'

# 9. Run the curl request from the terminal: ./findOne.sh
curl -XPOST -H "api-key: $apikey" -H 'Access-Control-Request-Headers: *' -H 'Content-type: application/json' -d '{ 
  "dataSource": "'"$dataSource"'", 
  "database": "'"$database"'", 
  "collection": "'"$collection"'",
  "filter": '"$filter"'
}' $baseurl$endpoint | npx json