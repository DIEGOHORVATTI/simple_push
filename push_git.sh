#!/bin/bash

read -p ' New commit: ' git
git branch -M main && 
git add . && 
git commit -m "$git" && 
git push -u origin main &&
clear &&
echo -e "\n\033[0;34m ✓✓:\033[0m $git \n"