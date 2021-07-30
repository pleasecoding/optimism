#!/bin/bash

cd ../
echo $PWD
npm install
yarn build

docker build . -t 172.22.41.103:5000/optimism-dtl:qa -f ./docker/kovan.Dockerfile
docker push 172.22.41.103:5000/optimism-dtl:qa

sudo kubectl delete deployment optimism-dtl -n bnbchain --cascade
sudo kubectl create -f k8s/qa-deploy.yml