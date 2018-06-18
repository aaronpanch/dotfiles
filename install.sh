#!/bin/bash

GLOBIGNORE=".:..:.git" # Skip non-project dotfiles
dir="$(cd "$(dirname "$0")"; pwd)"

for x in .*; do
  rm ~/$x
  ln -s $dir/$x ~/$x
done
