@echo off
REM Build Docker image with tag "ocr_server:v1"
docker build -t ocr_server:v1 .

REM Run Docker container with the name "ocr" and publish ports
docker run --name ocr -p 5555:9898 -d --restart=always ocr_server:v1

REM Output message
echo 啟動 ocr port 5555

