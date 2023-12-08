#!/usr/bin/env bash

# give a column name
echo "file name" > data/ghcnd_all_files.txt

# Extract tar file
tar tf data/ghcnd_all.tar.gz | grep ".dly" >> data/ghcnd_all_files.txt
# using grep is similar to str_dct in R
