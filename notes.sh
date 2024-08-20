#!/bin/bash

# declaring variable
SKILL="Devops"

# here $9 denotes 9th argument from the command line argument
# so we use \ to remove the special property
# any variable won't work in single quotes

echo "I have $SKILL skills and I have \$9 in my bank account"

# this command denotes the status of the last command executed
# if this is non-zero, it denotes error in the last command
$?



# command substitution
# suppose you want to store a command in other variable use `` or $()
FREE_RAM=`free -m | grep Mem | awk '{print $4}'`

echo "Free ram is $FREE_RAM mb."