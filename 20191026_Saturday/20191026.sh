#!/usr/bin/env bash

# Bash: Using grep regex parathesis. Leetcode: valid-phone-number.

echo "alias x='bash 20191026_Saturday/20191026.sh'" 

# Leetcode: task and solution.
# https://leetcode.com/problems/valid-phone-numbers/submissions/
# https://gist.github.com/lbvf50mobile/c534cd0a64ab40a6ad3bc84eda246b41

# Regex docs:
# https://www.gnu.org/software/grep/manual/html_node/index.html
# https://www.digitalocean.com/community/tutorials/using-grep-regular-expressions-to-search-for-text-patterns-in-linux
# http://www.robelle.com/smugbook/regexpr.html
# https://stackoverflow.com/questions/4761242/escaping-a-parenthesis-in-grep-ack
# https://www.zyxware.com/articles/4627/difference-between-grep-and-egrep

grep '^\(([0-9]\{3\}) [0-9]\{3\}-[0-9]\{4\}\|[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}\)$' file.txt

grep -E '^(\([0-9]{3}\) [0-9]{3}-[0-9]{4}|[0-9]{3}-[0-9]{3}-[0-9]{4})$' file.txt
