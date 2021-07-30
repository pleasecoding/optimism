#!/bin/bash

cd ../
echo $PWD
npm install
yarn build

docker build . -t optimism-dtl:local -f ./docker/kovan.Dockerfile