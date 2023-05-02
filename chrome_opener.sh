#!/bin/bash

# Get the URL from the command line argument
url="$1"

# Extract the message from the URL
message="${url#chromeopen://}"

# Decode the message from Base64
decoded_message="$(echo "$message" | base64 -d)"

# Print the decoded message
echo "chrome args : $decoded_message"

if which google-chrome > /dev/null; then
	# If it exists, execute google-chrome
	eval "google-chrome $decoded_message"
else
	# If it doesn't exist, execute chromium
	eval "chromium-browser $decoded_message"
fi
