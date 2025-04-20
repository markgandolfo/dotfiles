#!/bin/bash
for dir in */; do
    # Remove trailing slash
    dirname=${dir%/}

    # Check if it's a directory
    if [ -d "$dirname" ]; then
        # Check if the target already exists in ~/.config/
        if [ -e "$HOME/.config/$dirname" ]; then
            echo "NOTE: $HOME/.config/$dirname already exists. Skipping."
        else
            echo "Creating symlink: $HOME/.config/$dirname -> $(pwd)/$dirname"
            ln -s "$(pwd)/$dirname" "$HOME/.config/$dirname"
        fi
    fi
done

# Check if ~/.config/zsh/mark.zsh exists
if ! grep -q "source ~/.config/zsh/mark.zsh" ~/.zshrc; then
    echo -e "\n# Source mark.zsh file\nsource ~/.config/zsh/mark.zsh" >> ~/.zshrc
    echo "Added source line to ~/.zshrc"
else
    echo "Source line already exists in ~/.zshrc"
fi
