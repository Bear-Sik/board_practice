#!/bin/bash

TIMESTAMP=`date +%s`

echo ">>> server will run"

DOCKER_ID=mks5546
DOCKER_HUB_PW=rhkdtlr\!2
DOCKER_REPOSITORY=smingsming
DOCKER_TAG=test
DOCKER_IMAGE=$DOCKER_ID/$DOCKER_REPOSITORY:$DOCKER_TAG

sudo -S docker login -u ${DOCKER_ID} -p ${DOCKER_HUB_PW}
echo "docker login completed"

sudo docker build -t ${DOCKER_IMAGE} .
echo "docker build completed"

sudo docker push ${DOCKER_IMAGE}
echo "docker push completed"