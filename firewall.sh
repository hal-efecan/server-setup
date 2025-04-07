#!/bin/bash

# Make sure we're running as root
if [[ $EUID -ne 0 ]]; then
   echo "⚠️  This script must be run as root. Try: sudo $0"
   exit 1
fi

# Check if UFW is inactive
status=$(ufw status | head -n 1)

if [[ "$status" == "Status: inactive" ]]; then

    echo "🛡️  UFW is inactive — applying firewall rules..."

    ufw default deny incoming
    ufw default allow outgoing

    ufw allow ssh
    ufw allow http
    ufw allow https

    ufw enable --force

    echo "✅ Firewall rules applied and UFW is now active."

else
    
    echo "⚠️  UFW is already active — no changes made."
    ufw status verbose

fi


