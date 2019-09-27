#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls and the sum
#

# Improve this script by re-organizing it to:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or offset, for the RANDOM number in a variable (it is 1 for our purposes)
#     - you can think of this as the minimum value for the generated number
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
#  generate the sum of the dice
#  generate the average of the dice
#  display a summary of what was rolled, and what the result was

# Tell the user we have started processing
echo "Rolling..."
#echo "Enter number of sides for die1"
#read range1
#echo "Enter number of sides for die2"
#read range2
range1=6
range2=10
bias=1
# roll the dice and save the results
die1=$(( RANDOM % $range1 + $bias))
die2=$(( RANDOM % $range2 + $bias))
# sum up the rolls
sum=$(( die1 + die2 ))
average=$(( $sum / 2))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $sum / 2 }")
# display the results
echo "Rolled $die1, $die2 produce a addition of $sum and an average of $average to be precise $fpdividend"
