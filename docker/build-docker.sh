#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-gozerpay/gozerd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/gozerd docker/bin/
cp $BUILD_DIR/src/gozer-cli docker/bin/
cp $BUILD_DIR/src/gozer-tx docker/bin/
strip docker/bin/gozerd
strip docker/bin/gozer-cli
strip docker/bin/gozer-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
