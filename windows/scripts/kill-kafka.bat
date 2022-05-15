@echo off
echo kill kafka in 10s
timeout 10
taskkill /f /t /fi "windowtitle eq kafka-*"