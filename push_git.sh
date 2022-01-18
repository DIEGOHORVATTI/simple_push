#!/bin/bash

read -p 'commit: ' commit
read -p 'branch: ' branch

git branch -M $branch &&
git add . &&
git commit -m ''$commit'' &&
git push -u origin $branch &&

echo -e "\033[0;32m.............................\n\033]"
echo -e "\033[0;32m           |SUCCESS| \n\033]"
echo -e "\033[0;32m.............................\n\033]"
echo -e "\033[0;32m| commit: $commit  \n\033]"
echo -e "\033[0;32m| branch: $branch  \n\033]"
echo -e "\033[0;32m.............................\n\033]"