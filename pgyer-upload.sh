#!/bin/bash

COMMIT_MSG=`git log --oneline -1`
URL=https://www.pgyer.com/apiv2/app/upload
APK_FILE=@app/build/outputs/apk/pgyer/debug/app-pgyer-debug.apk

curl ${URL} -F "_api_key=${PGYER_APIKEY}" -F "file=${APK_FILE}" -F "buildInstallType=3" -F "buildUpdateDescription=${COMMIT_MSG}" --retry 5 --retry-delay 3 -O /dev/null

