#!/bin/bash

# Directory to check
CHECK_DIR="/mnt/smbshare"

# Mount command
MOUNT_CMD="sudo mount /mnt/smbshare"  # Replace with your actual mount command

# Check if directory is empty
if [ ! "$(ls -A $CHECK_DIR)" ]; then
    echo "$(date): $CHECK_DIR is empty, remounting..."
    $MOUNT_CMD
fi

