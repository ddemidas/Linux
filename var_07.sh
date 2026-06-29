#!/bin/bash
# Shebang line: Indicates the path to the shell interpreter (in this case, bash)

# Define a function
my_function() {
    local inside_variable="This is inside the function"
    echo "Variable inside function: $inside_variable"
}

# Call the function
my_function

# Attempt to access the variable outside the function
echo "Variable outside function: $inside_variable"