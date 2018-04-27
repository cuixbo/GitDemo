#!/bin/bash

COMMIT_MSG=`git log --oneline -1`

URL=https://www.pgyer.com/apiv1/app/upload

curl ${URL} -F _api_key=${PGYER_APIKEY} -F uKey=${PGYER_UKEY} -F file=@app/build/outputs/apk/pgyer/debug/app-pgyer-debug.apk -F updateDescription="${COMMIT_MSG}" --retry 50 --retry-delay 2 --retry-max-time 5 > /dev/null

