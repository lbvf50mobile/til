#!/usr/bin/env bash

# Git 'echo string' hash is equal with hash of blob in the tree.

# https://youtu.be/nHkLxts9Mu4

echo "alias x='bash 20180726_Thursday/20180726.sh'" 

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

STRING="Apple pie."
BASE_DIR=20180726_Thursday
GIT_DIR=$BASE_DIR"/temp_git"
FILE_ONE="apple"

echo "The string is: ${green}$STRING${reset}"
echo "Base dir is: ${green}$BASE_DIR${reset}"
echo "Git dir is: ${green}$GIT_DIR${reset}"

echo "== Create git Dir"
if([ -d $GIT_DIR ]); then
    echo "${green}$GIT_DIR existst${reset}"
else
    echo "${red}$GIT_DIR dose not exists${reset}"
    git init $GIT_DIR
    [ -d $GIT_DIR ] && echo "${green}Dir created${reset}" || exit 1
fi

echo "== Enter folder"
cd $GIT_DIR
pwd

HASH=$(echo $STRING | git hash-object --stdin)
HASH_W=$(echo $STRING | git hash-object --stdin -w)
echo "String: ${green}$STRING${reset}"
echo "HASH: ${green}$HASH${reset}"
echo "HASH_W: ${green}$HASH_W${reset}"
[ $HASH = $HASH_W ] && echo "${green}HASH = HASH_W${reset}" || echo "${red}HASH = HASH_W${reset}"

echo "== Create file ${green}$FILE_ONE${reset}"
echo $STRING > $FILE_ONE
cat $FILE_ONE
git add .
git commit -m "first file"
git log -1
COMMIT_HASH=$(git log --pretty=format:"%H")
echo "Commit hash: ${green}$COMMIT_HASH${reset}"
echo "== ${green}ls .git/objects/${reset}"
ls .git/objects/
echo "== ${green}ls .git/objects/${COMMIT_HASH:0:2}${reset}"
ls .git/objects/${COMMIT_HASH:0:2}

echo "== ${green}git cat-file $COMMIT_HASH -p${reset}"
git cat-file $COMMIT_HASH -p

echo "== Get tree hash"
TREE_HASH_LINE=$(git cat-file $COMMIT_HASH -p | grep tree)
TREE_HASH=${TREE_HASH_LINE:5}
echo "Tree hash line: ${green}$TREE_HASH_LINE${reset}"
echo "Tree hash: ${green}$TREE_HASH${reset}"

echo "== ${green}git cat-file $TREE_HASH -p${reset}"
git cat-file $TREE_HASH -p

echo "== blob hash"
BLOB_HASH_LINE=$(git cat-file $TREE_HASH -p) 
echo "Blob hash line: ${green}$BLOB_HASH_LINE${reset}"
BLOB_HASH=$(echo $BLOB_HASH_LINE | grep -Eo "[0-9a-z]{40}")
echo "Blob hash: ${green}$BLOB_HASH${reset}"

echo "== cat-file BLOB_HASH"
git cat-file $BLOB_HASH -p

echo "${red}==IMPORTANT${reset}"
echo "Blob hash: ${green}$BLOB_HASH${reset}"
echo "String: ${green}$STRING${reset}"
echo "HASH: ${green}$HASH${reset}"
[ $HASH = $BLOB_HASH ] && echo "BLOB_HASH = HASH" || echo "BLOB_HASH != HASH"

echo "== ${green}ls .git/objects/${reset}"
ls .git/objects/
echo "== ${green}ls .git/objects/${TREE_HASH:0:2}${reset}"
ls .git/objects/${TREE_HASH:0:2}

echo "== Come back"
cd ../..
pwd

echo "== Remove git Dir"
if([ -d $GIT_DIR ]); then
    echo "${green}$GIT_DIR existst${reset}"
    rm -rf $GIT_DIR
    [ ! -d $GIT_DIR ] && echo "${green} Dir succesfully removed ${reset}" || exit 1
else
    echo "${red}$GIT_DIR dose not exists${reset}"
fi
