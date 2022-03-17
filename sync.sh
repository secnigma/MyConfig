#!/bin/bash
cd config/
cp -r ~/.config/{autojump,i3,polybar,powerlevel10k,zsh,zsh-syntax-highlighting} .
cd ..
echo "Succesfully Copied latest config!"

sudo bash /home/kali/start_vpn.sh
echo "Starting VPN..."
