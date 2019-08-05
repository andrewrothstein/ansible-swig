#!/usr/bin/env sh
VER=4.0.0
DIR=~/Downloads
MIRROR=http://ufpr.dl.sourceforge.net/project/swig/swig
FILE=swig-${VER}.tar.gz
LFILE=$DIR/$FILE
URL=$MIRROR/swig-${VER}/${FILE}

if [ ! -e $LFILE ]
then
    wget -q -O $LFILE $URL
fi

printf "  # %s\n" $URL
printf "  '%s': sha256:%s\n" $VER `sha256sum $LFILE | awk '{print $1}'`
