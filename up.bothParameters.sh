#!/bin/bash -e

docker-compose -f docker-compose.base.yaml -f docker-compose.bothParameters.yaml up --build