#!/bin/bash

echo "Copying..."
cp -r ~/.config/i3 .config/
cp -r ~/.config/.zsh .config/
cp -r ~/.tmux.conf .
cp -r ~/.zshrc .

echo "Finished Copying!"
