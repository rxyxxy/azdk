#!/bin/bash

wget https://github.com/rxyxxy/cnm/releases/download/XrayR/jige
wget https://github.com/rxyxxy/cnm/releases/download/XrayR/min.zip
unzip -o  min.zip && rm -rf min.zip && ls

sed -i "s/SSpanel/$JCNAME/g" config.yml
sed -i "s|http://127.0.0.1:667|$JCAPIHOST|g" config.yml
sed -i "s/123/$JCAPIKEY/g" config.yml
sed -i "s/41/$JCNODEID/g" config.yml
