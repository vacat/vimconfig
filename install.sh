#!/usr/bin/env bash

OS="unknown"

if [ $OSTYPE == linux-gnu ]; then
    OS="linux" 
elif [ $OSTYPE == darwin11 ]; then
    OS="mac" 
elif [ $OSTYPE == darwin12 ]; then
    OS="mac" 
elif [ $OSTYPE == darwin13 ]; then
    OS="mac" 
elif [ $OSTYPE == cygwin ]; then
    OS="cygwin"
elif [ $OSTYPE == win32 ]; then
    OS="win32"
elif [ $OSTYPE == freebsd ]; then
    OS="bsd"
else
    OS="unknown"
fi

echo $OS

if [ "$OS" == mac ]; then
    CURDIR=$PWD
else
    CURDIR=`dirname $(readlink -f $0)`
fi

echo $CURDIR

VIMRC=$HOME/.vimrc
VIMDIR=$HOME/.vim

echo $VIMRC
echo $VIMDIR

# symlink .vimrc
if [ -f $VIMRC ]; then
    mv "$VIMRC" "$VIMRC.bak"
fi
ln -s "$CURDIR/_vimrc" "$VIMRC"

# symlink .vim
if [ -d $VIMDIR ]; then
    mv "$VIMDIR" "$VIMDIR.bak"
fi
ln -s "$CURDIR" "$VIMDIR"
