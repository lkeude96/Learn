#!/bin/bash
# This is a basic bash script.
a=""
b="cat"
[[ -z $a && -n $b ]]
echo $?

