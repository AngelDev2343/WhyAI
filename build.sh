#!/bin/bash

set -e

if [ ! -d "./source" ]; then
  git clone https://github.com/ngxson/wllama.git source
  cd source
else
  cd source
  git pull
fi

cd examples/main
npm i
npm run build

cd ../../..
rm -rf assets
cp -r ./source/examples/main/dist/* .
