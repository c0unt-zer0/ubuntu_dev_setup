#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac


export PATH=$PATH:~/bin:~/.local/bin:~/go/bin
export MANPATH=$MANPATH:~/.local/share/man

# Load customizations
for f in ~/.bashrc.d/*; do
  source $f
done
