#!/bin/sh

DIRNAME=`dirname $0`
echo -ne "Installing ...\n"
mkdir -p ~/.dotemacs
cp -r $DIRNAME/. ~/.dotemacs/
cp ~/.dotemacs/.emacs ~
echo -ne "Install Successfully! :-)\n\n"
