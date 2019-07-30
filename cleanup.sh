#!/bin/bash

echo "Remove stop container" 
docker rm $(docker ps -a -q)

echo "Remove orphan images"
docker rmi $(docker images -q --filter "dangling=true")

echo "Remove dangling volume"
docker volume rm $(docker volume ls -qf dangling=true)

