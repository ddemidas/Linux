#!/bin/bash
# Shebang line: Indicates the path to the shell interpreter (in this case, bash)

# Declare an array named "colors" containing favorite colors
colors=("Red", "Blue", "Green", "Purple", "Yellow")

# Print the entire array
echo "My favorite colors are: ${colors[@]}"
echo "My favorite colors one by one are: ${colors[0]}"
echo "My favorite colors one by one are: ${colors[1]}"
echo "My favorite colors one by one are: ${colors[2]}"
echo "My favorite colors one by one are: ${colors[3]}"
echo "My favorite colors one by one are: ${colors[4]}"

for color in "${colors[@]}";
do
	echo "My favorite color is: $color ."
done