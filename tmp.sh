#!/usr/bin/env bash
#https://www.tldp.org/LDP/abs/html/string-manipulation.html
STRING="heyWAYhey"
echo $STRING
echo ${STRING#hey} # WAYhey front SubstringRemoval
echo ${STRING%hey} # heyWAY back SubstringRemoval
hop="opHOPop"
echo $hop
echo ${hop#op}
echo ${hop%op}