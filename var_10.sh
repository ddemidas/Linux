#!/bin/bash
# Shebang line: Indicates the path to the shell interpreter (in this case, bash)

# Print the name of the script
echo "Name of the script: $0"

# Print the number of arguments passed to the script
echo "Number of arguments passed: $#"

# Print all the arguments passed to the script
echo "All arguments passed: $@"

# Check the exit status of the last command
echo "Exit status of the last command: $?"