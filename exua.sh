#!/bin/bash

# Download files from EX.UA filelist and clean up after yourself
# USAGE exua.sh <ex.ua ID>

wget -i http://www.ex.ua/filelist/$1.urls \
    --trust-server-names=on \
    --restrict-file-names=nocontrol \
    --directory-prefix=$1
rm -f $1/$1.urls
