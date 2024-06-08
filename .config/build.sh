#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage $0 arg1 arg2"
    exit 1
fi 

g++ "$1" -o "$2" # compile 