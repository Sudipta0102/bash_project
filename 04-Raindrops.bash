#!/bin/bash

# Your task is to convert a number into its corresponding raindrop sounds.

# If a given number:

#     is divisible by 3, add "Pling" to the result.
#     is divisible by 5, add "Plang" to the result.
#     is divisible by 7, add "Plong" to the result.
#     is not divisible by 3, 5, or 7, the result should be the number as a string.

# Examples

#     28 is divisible by 7, but not 3 or 5, so the result would be "Plong".
#     30 is divisible by 3 and 5, but not 7, so the result would be "PlingPlang".
#     34 is not divisible by 3, 5, or 7, so the result would be "34".

read -p "number: " num
result=""

# if(($num%3==0))
# then
#     result+="Pling"
# fi

# if(($num%5==0))
# then
#     result+="Plang"
# fi

# if(($num%7==0))
# then
#     result+="Plong"
# fi

# if [ -z $result ]
# then
#     echo $num
# else    
#     echo $result
# fi    

(($num%3==0)) && result+="Pling"
(($num%5==0)) && result+="Plang"
(($num%7==0)) && result+="Plong"

echo ${result:-$num}  # :- follows the default value.
