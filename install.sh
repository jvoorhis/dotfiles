#!/bin/sh

rsync -avz --include-from=- --exclude='*' ./ ~/ <<FILES
.ackrc
.zshrc
FILES
