#!/bin/bash

# Define colors
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

# Print welcome banner
cat << "EOF"
    _   __         __      __
   / | / /__  ____/ /___  / /_____
  /  |/ / _ \/ __  / __ \/ __/ __ \
 / /|  /  __/ /_/ / /_/ / /_/ /_/ /
/_/ |_/\___/\__,_/\____/\__/\____/

Welcome to Nedoto client
EOF

echo # newline

# Prompt for API key
echo "${GREEN}Please enter your API key:${RESET}"
read API_KEY

echo # newline

# Prompt for variable name
echo "${GREEN}Please enter your variable name:${RESET}"
read VARIABLE_NAME

echo # newline

# Make the API call using the variables
RESPONSE=$(curl --write-out "%{http_code}" --silent --output /dev/null --location "http://local.nedoto.com/api/var/get/$VARIABLE_NAME" --header "X-Api-Key: $API_KEY")

# Check the HTTP status code
if [ "$RESPONSE" -ne 200 ]; then
    echo "${RED}Error: Failed to retrieve data from nedoto.com. HTTP status code: $RESPONSE.${RESET}"
    echo "${RED}Please check your connection or the api-key and variable name${RESET}"
    exit 1
else
    # If the status code is 200, make the API call again to get the response body
    RESPONSE_BODY=$(curl --silent --location "http://local.nedoto.com/api/var/get/$VARIABLE_NAME" --header "X-Api-Key: $API_KEY")
    echo "${GREEN}Response:${RESET}"
    echo $RESPONSE_BODY | json_pp
fi

