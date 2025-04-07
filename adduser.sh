#!/bin/bash

# Prompt for username
read -p "Enter username to create: " username

# Validate input
if [[ -z "$username" ]]; then
  echo "Error: Username cannot be empty!"
  exit 1
fi

# Check if user exists
if id "$username" &>/dev/null; then
  echo "Error: User '$username' already exists!"
  exit 1
fi

# Create user and add to sudo group
sudo adduser --gecos "" "$username"  # --gecos "" skips interactive prompts
sudo usermod -aG sudo "$username"

# Verify
echo "User '$username' created and added to sudo group:"
groups "$username"

