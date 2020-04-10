#!/bin/bash

mkdir $1 &&
cd $1 &&
echo "Welcome to the $1 project! This is the readme." > README.md &&
git init && 
git add . && 
git commit -m "Initial commit" && 
git remote add origin git@github.com:UltraTimon/$1.git &&  
git push --set-upstream origin master 
