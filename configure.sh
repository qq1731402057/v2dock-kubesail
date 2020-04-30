#!/bin/sh

# New Config
cat > /etc/v2ray/config.json << EOF
{
    "inbounds": [
        {
            "port": 9199,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "6e95a3ae-4580-486b-9cfa-27782f101a93",
                        "alterId": 64
                    }
                ]
            }
        },
        {
            "port": 8188,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "6e95a3ae-4580-486b-9cfa-27782f101a93",
                        "alterId": 64
                    }
                ]
            },
            "streamSettings": {
                "network": "ws",
                "wsSettings": {
                    "path": "/ws"
                }
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom",
            "settings": {}
        }
    ]
}
EOF

# Run V2Ray
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
