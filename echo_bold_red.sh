#!/bin/bash
# Shebang line: Indicates the path to the shell interpreter (in this case, bash)

# Script to display a message with formatted text using ANSI escape codes

# Define ANSI escape codes for formatting
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)

# Using echo command to display a message with formatted text
echo -e "${bold}${red}This is a bold and red message.${reset}"
# -e option enables interpretation of backslash escapes for ANSI escape codes