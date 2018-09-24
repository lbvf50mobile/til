#!/usr/bin/env ruby

# Git. Show last two commits (excluding HEAD~2)

echo "alias x='bash 20180924_Monday/20180924.sh'" 
git log HEAD~2..HEAD --oneline