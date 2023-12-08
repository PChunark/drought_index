#!/usr/bin/env bash

# Get all the daily data from all weather stations and 
# generate list of stations
code/get_ghcnd_data.bash ghcnd_all.tar.gz
code/get_ghcnd_all_files.bash

# Get listing of types of data found at each weather station
code/get_ghcnd_data.bash ghcnd-inventory.txt

# Get metadata for each weather station
code/get_ghcnd_data.bash ghcnd-stations.txt