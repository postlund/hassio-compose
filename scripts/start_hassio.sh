#!/bin/bash

echo "Resetting last boot..."
sed -i 's/"last_boot": ".*"/"last_boot": ""/' /data/config.json 2> /dev/null

echo "Starting hassio..."
python3 -m supervisor
