#!/usr/bin/env bash

BASH_CREDENTIALS=~/.bash_credentials
if [ -f $BASH_CREDENTIALS ]; then
    source $BASH_CREDENTIALS
fi
