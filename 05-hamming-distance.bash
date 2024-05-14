#!/bin/bash

# Calculate the Hamming Distance between two DNA strands.
# We read DNA using the letters C,A,G and T. Two strands might look like this:

# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^

# They have 7 differences, and therefore the Hamming Distance is 7.

# The Hamming Distance is useful for lots of things in science, not just biology, so it's a nice phrase to be familiar with :)
# Implementation notes

# The Hamming distance is only defined for sequences of equal length, so an attempt to calculate it between sequences of different lengths should not work.


read -p "str1: " str1
read -p "str2: " str2

# hamming distance
#count=0 # don't need to initialize variable
# exit if lengths are not equal
# if((${#str1}!=${#str2}))
# then
#     echo "lengths are not equal"
#     exit 1
# fi
# the if loop above works fine, but bash has a one liner here (It's like a ternary
# operator in java, but without the else part)
# this is and operator.
((${#str1}!=${#str2})) && echo "lengths are not equal" && exit 1

for((i=0;i<${#str1};i++))
do
    # also instead of creating these char1 and char2, we can do this
    # too in the single line. 
    char1=${str1:i:1}
    char2=${str2:i:1}

    # this is instead of that if loop
    [ $char1 != $char2 ] && ((count++))
    # if [ $char1 != $char2 ]
    # #if((${char1}!=${char2}))  # doesn't work this.
    # then
        
    #     ((count++))      
    # fi
done

echo "hamming-distance: ${count:-0}"