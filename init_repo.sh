#!/bin/bash

git init && 
git add . && 
git commit -m "Initial commit" && 
git remote add origin git@github.com:UltraTimon/$1.git &&  
git push --set-upstream origin master 
