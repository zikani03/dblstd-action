#!/bin/sh
git clone https://github.com/sethbonnie/dblstd dblstd-src
cd ./dblstd-src
go build -o dblstd . && chmod +x ./dblstd
cd ..
./dblstd-src/dblstd -s $INPUT_SHAPEFILE .