#!/bin/bash
systemctl start docker
docker build -t ocr_server:v1 . --no-cache
docker run --name ocr -p 80:9898 -d ocr_server:v1
echo "啟動 ocr port 80"
