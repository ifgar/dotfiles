#!/bin/sh
RUNTIME_DIR="/run/user/$(id -u)"

while true; do
  if [ -f "$RUNTIME_DIR/waybox.state" ]; then
    echo '{"alt":"true"}'
  else
    echo '{"alt":"false"}'
  fi
  sleep 0.1
done
