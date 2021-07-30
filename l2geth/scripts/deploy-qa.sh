#!/bin/bash

cd ../
echo $PWD
npm install
yarn build

docker build . -t 172.22.41.103:5000/optimism-verifier:qa -f ./docker/kovan.Dockerfile
docker push 172.22.41.103:5000/optimism-verifier:qa

sudo kubectl delete deployment optimism-verifier -n bnbchain --cascade
sudo kubectl create -f k8s/qa-deploy.yml
