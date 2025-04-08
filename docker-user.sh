#!/bin/bash

# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker

# Check if docker group exists
if grep -q '^docker:' /etc/group; then
    echo "Docker group already exists"
else
    echo "Creating docker group"
    sudo groupadd docker
fi

# Check if user is already in docker group
if groups $USER | grep -q '\bdocker\b'; then
    echo "User $USER is already in docker group"
else
    echo "Adding user $USER to docker group"
    sudo usermod -aG docker $USER
    echo "Warning: You may need to logout/login or run 'newgrp docker' for changes to take effect"
fi

# Optional: Activate group changes without logout (may not work in all environments)
newgrp docker || true

echo "Docker group setup complete"