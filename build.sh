#!/bin/bash

if [ -z "$VERSION" ]; do
  echo "usage:"
  echo " ./build VERSION"
  return
fi

IMAGE="asciifaceman/razorcms"
VERSION=$1

docker build -t ${IMAGE}:${VERSION} . | tee build.log || exit 1
ID=$(tail -1 build.log | awk '{print $3;}')
docker tag $ID ${IMAGE}:latest

docker images | grep ${IMAGE}