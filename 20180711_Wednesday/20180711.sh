#!/usr/bin/env bash

# Rake namespace and args.

echo "alias x='bash 20180711_Wednesday/20180711.sh'" 

rake -f 20180711_Wednesday/rake.rb -T
rake -f 20180711_Wednesday/rake.rb first[1,2,3]