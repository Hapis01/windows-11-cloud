@echo off
echo ===========================
echo = Starting Windows 11... =
echo ===========================

:: Ekstrak Ngrok ke folder ngrok/
powershell -Command "Expand-Archive -Path scripts/ngrok.zip -DestinationPath scripts/ngrok"

:: Jalankan ngrok
cd scripts/ngrok
start ngrok.exe http 8080

:: Balik ke root
cd ../..

:: Jalankan sesi lainnya
call scripts/loop.bat
