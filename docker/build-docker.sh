#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-stone-project/stoned-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/stoned docker/bin/
cp $BUILD_DIR/src/stone-cli docker/bin/
cp $BUILD_DIR/src/stone-tx docker/bin/
strip docker/bin/stoned
strip docker/bin/stone-cli
strip docker/bin/stone-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
