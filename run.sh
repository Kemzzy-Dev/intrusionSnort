#!/bin/bash

# Define the keyword you want to trigger the application
KEYWORD="intrusion"

# Function to check if the keyword is pressed
check_keyword() {
    while true; do
        read -s -n ${#KEYWORD} input

        if [ "$input" = "$KEYWORD" ]; then
            echo "Starting the application..."
            cd ./SNORT-GUI/snort/snortgui
            sudo python3 snortgui.py
        fi
    done
}

# Start monitoring for the keyword
check_keyword
