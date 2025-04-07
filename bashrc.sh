#!/bin/bash

sudo apt install -y curl

BASHRC_URL="https://raw.githubusercontent.com/hal-efecan/bashrc/main/.bashrc"

curl -o ~/.bashrc "$BASHRC_URL"

source ~/.bashrc
