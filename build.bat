@echo off
docker build -t ocr_server:v1 .
docker run -p 5555:9898 -d ocr_server:v1
echo 啟動 ocr port 5555
pause

