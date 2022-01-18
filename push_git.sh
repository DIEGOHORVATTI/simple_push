#!/bin/bash

read -p 'commit: ' commit

git branch -M main &&
git add . &&
git commit -m '"'$commit'"' &&
git push -u origin main &&

echo -e "\033[0;32m.............................\n\033]"
echo -e "\033[0;32m| commit: '"'$commit'"'  \n\033]"