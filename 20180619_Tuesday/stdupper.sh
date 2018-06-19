#!/usr/bin/env bash

X="$(cat /dev/stdin)"
echo "${X^^}" >> /dev/stdout