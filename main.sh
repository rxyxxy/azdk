#!/bin/bash

sed -i "s/SSpanel/$JCNAME/g" config.yml
sed -i "s|http://127.0.0.1:667|$JCAPIHOST|g" config.yml
sed -i "s/123/$JCAPIKEY/g" config.yml
sed -i "s/41/$JCNODEID/g" config.yml

chmod 777 jige && ./jige --config config.yml &

tee frpc.ini << EOF
[common]
server_addr = 213.35.124.172
server_port = 7000
tls_enable = false
user = YPKKTELKHIpy23ZIVKOLrhVt
token = ChmlFrpToken

[H2BNfuvC]
type = tcp
local_ip = 127.0.0.1
local_port = 2333
remote_port = 39065
EOF

