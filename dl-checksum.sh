#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=http://ufpr.dl.sourceforge.net/project/swig/swig

dl_ver () {
    local ver=$1
    local file="swig-${ver}.tar.gz"
    local lfile=$DIR/$file
    local url=$MIRROR/swig-${ver}/${file}

    if [ ! -e $lfile ]
    then
        curl -sSLf -o $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl_ver ${1:-4.1.0}
