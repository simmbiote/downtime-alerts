#!/bin/bash

SITE=NiceName.com
URL=https://www.site-url.com
NOTIFYEMAIL=email@example.org

RESPONSE=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' $URL)

if [ "$RESPONSE" != 200 ]
then
echo "$URL is not ok: responded server code $RESPONSE" | mail -s "$SITE is not ok" $NOTIFYEMAIL
fi
