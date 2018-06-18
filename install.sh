#!/bin/bash

GLOBIGNORE=".:..:.git:.DS_Store" # Skip non-project dotfiles
dir="$(cd "$(dirname "$0")"; pwd)"

for x in .*; do
  rm ~/$x # remove the old file
  ln -s $dir/$x ~/$x # create symlink
done
