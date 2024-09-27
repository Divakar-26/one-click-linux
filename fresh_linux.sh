#!/bin/bash

# Update and upgrade the system
echo -e "Updating and upgrading the system...\n"

sudo apt update && sudo apt upgrade -y
echo -e "\n"

# Install essential packages
echo -e "Installing essential development tools and utilities...\n"

sudo apt install -y build-essential python3 python3-pip make git snap curl gnome-tweaks wget default-jdk default-jre vlc

# Set VLC media player as the default for certain file types
echo -e "Setting VLC as the default media player for mp4, webm, and more...\n"

xdg-mime default vlc.desktop audio/x-mpegurl
xdg-mime default vlc.desktop video/mp4
xdg-mime default vlc.desktop video/x-matroska
xdg-mime default vlc.desktop audio/mpeg
xdg-mime default vlc.desktop video/webm
xdg-mime default vlc.desktop audio/mp3


# Install yt-dlp and ffmpeg for video downloads
echo -e "Installing yt-dlp and ffmpeg for downloading high-quality videos...\n"

sudo apt install -y yt-dlp ffmpeg
echo -e "\n"
# echo -e "Usage: yt-dlp [OPTIONS] [YOUTUBE_URL]\n"

# Install Neovim via snap
echo -e "Installing Neovim, a customizable text editor...\n"

sudo snap install nvim --classic

# Install VS Code via snap (optional)
echo -e "Installing Visual Studio Code...\n"

sudo snap install code --classic

# Set VS Code as the default editor for various file types
echo -e "Setting VS Code as the default editor for common file types...\n"


# Using the correct path to the VS Code .desktop file
xdg-mime default code_code.desktop text/x-c  # .c files
xdg-mime default code_code.desktop text/x-c++src  # .cpp files
xdg-mime default code_code.desktop application/x-shellscript  # .sh files
xdg-mime default code_code.desktop text/html  # .html files
xdg-mime default code_code.desktop text/css  # .css files
xdg-mime default code_code.desktop application/javascript  # .js files
xdg-mime default code_code.desktop text/x-java-source  # .java files
xdg-mime default code_code.desktop text/plain  # .txt files
xdg-mime default code_code.desktop application/xml  # .xml files

echo -e "VS Code has been set as the default editor for selected file types.\n"

sudo update-desktop-database
sudo update-mime-database /usr/share/mime


# # Install Google Chrome
# echo -e "Installing Google Chrome...\n"
# 
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome-stable_current_amd64.deb
# sudo apt-get install -f -y  # Fix dependencies
# echo -e "Type 'google-chrome' to launch Chrome.\n"
# 


# # Install Spotify client (optional)
# echo -e "Installing Spotify client...\n"
# 
# curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
# echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt update && sudo apt install spotify-client -y

# # Apply SpotX to block ads on Spotify (optional)
# echo -e "Patching Spotify to block ads...\n"
# 
# bash <(curl -sSL https://spotx-official.github.io/run.sh)

# echo -e "All installations and configurations are complete!\n"
