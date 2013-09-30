#!/bin/sh

DIRNAME=`dirname $0`

echo -ne "Installing ...\n"
cp $DIRNAME/configs/emacs-basic-config.el  ~/.emacs
echo -ne "Install Successfully! :-)\n\n"

