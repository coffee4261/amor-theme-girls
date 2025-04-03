#!/bin/bash

# Ensure the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Please use sudo."
  exit 1
fi

# Copy the rc file to the /usr/share/amor/ directory
cp misato_2rc /usr/share/amor/

# Create the directory for images if it doesn't exist
mkdir -p /usr/share/amor/pics/animated/misato_2/

# Copy the shime1.png shime2.png files to the asuka_suit directory
cp shime1.png shime2.png /usr/share/amor/pics/animated/misato_2/

# Copy the png file to the preview directory
cp misato_2_preview.png /usr/share/amor/pics/preview/

# Output a success message
echo "Files copied successfully!"
