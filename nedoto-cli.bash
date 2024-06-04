#!/bin/bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

API_ENDPOINT="https://app.nedoto.com/api/var/get"

cat << "EOF"
    _   __         __      __
   / | / /__  ____/ /___  / /_____
  /  |/ / _ \/ __  / __ \/ __/ __ \
 / /|  /  __/ /_/ / /_/ / /_/ /_/ /
/_/ |_/\___/\__,_/\____/\__/\____/

Welcome to Nedoto client
EOF

echo

echo "${GREEN}Please enter your API key:${RESET}"
read API_KEY

echo

echo "${GREEN}Please enter your variable name:${RESET}"
read VARIABLE_NAME

echo

RESPONSE=$(curl --write-out "%{http_code}" --silent --output /dev/null --location "$API_ENDPOINT/$VARIABLE_NAME" --header "X-Api-Key: $API_KEY")

if [ "$RESPONSE" -ne 200 ]; then
    echo "${RED}Error: Failed to retrieve data from nedoto.com. HTTP status code: $RESPONSE.${RESET}"
    echo "${RED}Please check your connection or the api-key and variable name.${RESET}"
    exit 1
else
    RESPONSE_BODY=$(curl --silent --location "$API_ENDPOINT/$VARIABLE_NAME" --header "X-Api-Key: $API_KEY")
    echo "${GREEN}Response:${RESET}"
    echo $RESPONSE_BODY | json_pp
fi
