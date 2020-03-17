#!/bin/bash

URL=https://www.pgyer.com/apiv2/app/upload
APK_FILE=@app/build/outputs/apk/pgyer/debug/app-pgyer-debug.apk
COMMIT_MSG=`git log --oneline -1`

curl ${URL} -F "_api_key=${PGYER_APIKEY}" -F "file=${APK_FILE}" -F "buildInstallType=3" -F "buildUpdateDescription=${COMMIT_MSG}" --retry 5 --retry-delay 3 --retry-max-time 30 -o /dev/null