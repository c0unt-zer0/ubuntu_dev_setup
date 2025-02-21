#!/bin/bash

FILE_LIST=( \
    ".bash_history" \
    ".flexlmrc" \
    ".gitconfig" \
    ".netrc" \
    ".qnx" \
    ".ssh" \
    "bookmarks.html" \
    ".emacs.d/lisp/*.el" \
    ".docker/config.json" \
    ".jfrog/jfrog-cli.conf*" \
    ".pip/pip.conf" \
    "scripts" \
    "notes" \
    "bazel-notes" \
)
HERE=$(pwd)
# cd to enable globbing
cd ${HOME}
tar -czvf ${HERE}/bundle.tar.gz ${FILE_LIST[@]}
cd - > /dev/null
