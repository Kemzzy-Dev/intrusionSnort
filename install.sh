#!/bin/bash

# Update the package lists
sudo apt update

# Install required packages
sudo apt install -y snort wget

# Download Snort rules
sudo wget https://www.snort.org/downloads/community/community-rules.tar.gz -O /etc/snort/community-rules.tar.gz

# Extract Snort rules
sudo tar -xzvf /etc/snort/community-rules.tar.gz -C /etc/snort/

# Configure Snort (you may need to customize this based on your requirements)
# Here we're copying a basic snort configuration to snort.conf
sudo cp /etc/snort/snort.conf{.dpkg-dist,}

git clone https://github.com/WhiteHatCyberus/SNORT-GUI.git

cd SNORT-GUI

cd snort/snortgui

mv resources .resources

sudo python3 installer.py

sudo python3 snortgui.py




