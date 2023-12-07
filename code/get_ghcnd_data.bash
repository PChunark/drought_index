#!/usr/bin/env bash

file=$1

#rm data/$file

#wget --no-check-certificate -nc -P data/ https://www.ncei.noaa.gov/pub/data/ghcn/daily/$file

curl -L https://www.ncei.noaa.gov/pub/data/ghcn/daily/$file --output data/$file