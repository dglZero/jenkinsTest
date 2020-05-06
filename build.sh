#!/bin/bash

docker container stop jenkinsTest
docker container prune --force

# 生成image
docker build --rm -t demo .

docker run -d ${DNS_STR} -p 8002:8002    --env JAVA_JVM="-Xms500m -Xmx500m" --name=jenkinsTest demo

docker image prune --force




