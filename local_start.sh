#!/bin/bash
docker build -t ocr_server:v1 .
docker run --name ocr -p 5555:9898 -d --restart=always ocr_server:v1
echo "啟動 ocr port 5555"
