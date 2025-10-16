#!/bin/sh

#######################
echo "make clean"
#######################
make clean

#######################
echo "make -j8n"
#######################
make -j8

#######################
echo "make install"
#######################
sudo make install

#######################
echo "ffmpeg version"
#######################
ffmpeg -version

exit 0
