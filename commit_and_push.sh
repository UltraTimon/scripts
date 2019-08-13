#!/bin/bash

git add . && 
git commit -qm "$*" && 
git push -q
