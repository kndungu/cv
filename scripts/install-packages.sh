#!/bin/bash
set -e

# Update package lists
sudo apt update

# Install required packages
sudo apt install -y texlive-full
sudo apt install -y luatex
