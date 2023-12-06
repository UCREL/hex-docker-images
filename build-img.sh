#!/bin/bash

path=$1
tag="ucrel/hex-python:${1%/}"

pushd $path
docker build -t "${tag}" .
popd