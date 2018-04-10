#!/bin/bash -e

echo "Entered the entrypoint"

sleep 10

./greeter_client $@

while true; do
    sleep 10

    netstat -tanvo
done