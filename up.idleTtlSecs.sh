#!/bin/bash -e

docker-compose -f docker-compose.base.yaml -f docker-compose.idleTtlSecs.yaml up --build