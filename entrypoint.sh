#!/bin/sh

# config xray
cat << EOF > /etc/config.json
{
  "inbounds":[
    {
      "port": $PORT,
      "protocol": "shadowsocks",
      "settings": {
        "method": "aes-256-gcm", 
	"password": "3097c963-bd57-4cb8-aaab-aaa5d9e2302f",
	"network": "tcp"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}	
EOF

# run xray
/usr/bin/v2ray run -config /etc/config.json
#/usr/bin/xray run -config /etc/config.json
