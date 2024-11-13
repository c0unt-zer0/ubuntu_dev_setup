#!/bin/bash

FILE_LIST=( \
    ".bash_history" \
    ".flexlmrc" \
    ".gitconfig" \
    ".git-credentials" \
    ".netrc" \
    ".qnx" \
    ".ssh" \
    ".config/google-chrome/Default/Bookmarks" \
)

tar -C ${HOME} -czvf bundle.tar.gz ${FILE_LIST[@]}


