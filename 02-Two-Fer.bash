#!/bin/bash

# Your task is to determine what you will say as you give away the extra cookie.
# If you know the person's name (e.g. if they're named Do-yun), then you will say:
# One for Do-yun, one for me.
# If you don't know the person's name, you will say you instead.
# One for you, one for me.

# basically one var name should be created for the user input. 
# then check the user input is null or not, if null, then substitute that with 'you'.

read -p "name: " name

if [ -z $name ]
then
    echo "One for you, one for me"
else
    echo "One for $name, one for me"    
fi    
