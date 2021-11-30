#!/usr/bin/env bash
export ECR=xxxxxxxxxx.dkr.ecr.ap-northeast-2.amazonaws.com
export APP=test-copys3
export AWS_PROFILE=skt-jaeilkim
export TARGET=latest

# login
aws ecr get-login-password --region ap-northeast-2 --profile ${AWS_PROFILE} | docker login --username AWS --password-stdin ${ECR}

# build test-ffmpeg
docker build --no-cache -t ${APP} .
docker tag ${APP} ${ECR}/${APP}:${TARGET}

# remove unnecessary images
docker image prune
