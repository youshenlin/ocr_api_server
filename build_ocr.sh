#!/bin/bash
systemctl start docker
systemctl enable docker.service
docker build -t ocr_server:v1 .
docker run --name ocr -p 80:9898 -d --restart=always ocr_server:v1
echo "啟動 ocr port 80"
