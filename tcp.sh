#!/bin/bash

# sed -i "s/SSpanel/$JCNAME/g" config.yml
# sed -i "s|http://127.0.0.1:667|$JCAPIHOST|g" config.yml
# sed -i "s/123/$JCAPIKEY/g" config.yml
# sed -i "s/41/$JCNODEID/g" config.yml

sed -i "s/SSpanel/V2board/g" config.yml
sed -i "s|http://127.0.0.1:667|https://go.166660.xyz|g" config.yml
sed -i "s/123/2Lb72ZtjrpgJk00yso/g" config.yml
sed -i "s/41/$JCNODEID/g" config.yml

cat /usr/local/nginx/conf/nginx.conf

./jige --config config.yml &
