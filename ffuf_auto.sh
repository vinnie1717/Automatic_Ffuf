#!/bin/bash

# Check if the URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL."
  exit 1
fi

# Extract the URL argument
url="$1"

if [ -z "$2"]; then

# Execute the ffuf command with the provided URL
  ffuf -u "$url/FUZZ" -w /usr/share/wordlists/fuzz.txt -r -c

else 

  ffuf -u "$url/FUZZ" -w /usr/share/wordlists/fuzz.txt -r -c -fc "$2"

fi
