#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ac2bf96e-cb34-4fa7-93b9-5107e4d18bb3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

