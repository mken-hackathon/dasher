#!/bin/bash -x

curl -i -X POST \
-H "Context-Tyep:application/json" \
-d '' \
"https://team2-api.mken.site/button/${1}/activity"
