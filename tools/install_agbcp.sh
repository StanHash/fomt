#!/bin/bash

here=$(dirname "$(readlink -f "$0")")/..
temp=$(mktemp -d)

git clone https://github.com/notyourav/agbcc.git $temp

cd $temp
git checkout origin/cp
./build.sh
./install.sh $here

rm -fr $temp
