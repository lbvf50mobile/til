#!/usr/bin/env bash

# BASH Put .rb files to the  rubocop. (git, cut, grep, xargs)

echo "alias x='bash 20181120_Tuesday/20181120.sh'" 

git status --porcelain | cut -c4- | grep '.rb' | xargs rubocop