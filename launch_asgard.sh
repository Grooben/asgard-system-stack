#!/bin/sh
echo ---------------------------------------
echo Creating Local MySQL storage volume
echo ---------------------------------------
mkdir volumes
mkdir volumes/db
echo
echo ---------------------------------------
echo Building and Deploying Asgard
echo ---------------------------------------
docker-compose up -d --build --remove-orphans
echo
echo ---------------------------------------
echo Conntainer Status:
echo ---------------------------------------
docker ps | grep 'asgard\|heimdall'