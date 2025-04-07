#!/bin/bash

# Check for curl
if ! command -v curl &> /dev/null; then
    echo "❌ curl is not installed. Please run: sudo apt install curl"
    exit 1
fi

# Define the variable
BASHRC_URL="https://raw.githubusercontent.com/hal-efecan/bashrc/main/.bashrc"

# Download the file as the current user, not as root
curl -o "$HOME/.bashrc" "$BASHRC_URL"

# Reload the new .bashrc in the current shell
source "$HOME/.bashrc"

echo "✅ Script complete"