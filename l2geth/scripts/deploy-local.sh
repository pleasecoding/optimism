#!/bin/bash

cd ../
echo "$PWD"
docker build . -t verifier:local -f ./docker/kovan.Dockerfile
