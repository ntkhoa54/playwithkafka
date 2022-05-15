@echo off

echo cd to :\programs\kafka
cd C:\programs\kafka

echo start kafka-zookeeper
start cmd /k "title kafka-zookeeper & .\bin\windows\zookeeper-server-start.bat config\zookeeper.properties"
timeout 10

echo start kafka-server
start cmd /k "title kafka-server & .\bin\windows\kafka-server-start.bat config\server.properties"
timeout 10

echo start kafka-connect
start cmd /k "title kafka-connect & .\bin\windows\connect-distributed.bat config\connect-distributed.properties"
timeout 10

echo try to curl localhost:8083/
curl localhost:8083
timeout 10
