#!/bin/bash

# The goal of this exercise is to consider the number of arguments passed to your program. 
# If there is exactly one argument, print a greeting message. Otherwise print an error 
# message and exit with a non-zero status.

# 'echo $#' to echo the number of arguments

#if [ "$#" -eq 1 ]
if(("$#"==1)) # this also works.
then
    echo "congratualtions, you conformed"
else
    echo "you vegeterian cockroach, live within limit"
    exit 1
fi


