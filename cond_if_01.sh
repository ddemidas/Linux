#!/bin/bash
# Shebang line: Indicates the path to the shell interpreter (in this case, bash)

# Prompt the user to enter a number
echo "Input a number:"
read n

# Check if the number is greater than 100
if [ "$n" -gt 100 ]; then
    echo "The number is greater than 100."
else
    echo "The number is not greater than 100."
fi