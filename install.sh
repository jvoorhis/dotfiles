#!/bin/sh

rsync -avz --include-from=- --exclude='*' ./ ~/ <<FILES
.ackrc
.gemrc
.irbrc
.vim
.vimrc
FILES
