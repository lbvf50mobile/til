#!/usr/bin/env bash
# How to delete -r  file?
# https://www.cyberciti.biz/faq/howto-linux-unix-delete-remove-file/

# 1) Create -r and -f file
touch -- -r
echo 2 > -f
[ -f -r ] && echo "File exists"
# [-f -f ] && echo "And F exists" # how?
# 2) delete this fis
rm -- -r -f