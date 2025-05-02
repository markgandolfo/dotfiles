#!/usr/bin/env python3
import os
from pathlib import Path

# Get current directory and home directory
current_dir = Path.cwd()
home_dir = Path.home()

# Handle files in home_dir directly to home directory
home_files_path = current_dir / "home"
if home_files_path.exists() and home_files_path.is_dir():
    for item in home_files_path.iterdir():
        target = home_dir / item.name
        if target.exists():
            print(f"NOTE: {target} already exists. Skipping.")
        else:
            print(f"Creating symlink: {target} -> {item}")
            os.symlink(item, target)

# Handle other directories to ~/.config/ (skipping home_dir)
config_dir = home_dir / ".config"
config_dir.mkdir(exist_ok=True)

ignore_dirs = ["home", ".git", "scripts"]
for item in current_dir.iterdir():
    if not item.is_dir() or item.name in ignore_dirs:
        continue

    target = config_dir / item.name
    if target.exists():
        print(f"NOTE: {target} already exists. Skipping.")
    else:
        print(f"Creating symlink: {target} -> {item}")
        os.symlink(item, target)

# Check if ~/.config/zsh/mark.zsh exists in ~/.zshrc
zshrc_path = home_dir / ".zshrc"
source_line = "source ~/.config/zsh/mark.zsh"

if zshrc_path.exists():
    with open(zshrc_path, "r") as f:
        content = f.read()

    if source_line not in content:
        with open(zshrc_path, "a") as f:
            f.write(f"\n# Source mark.zsh file\n{source_line}\n")
        print("Added source line to ~/.zshrc")
    else:
        print("Source line already exists in ~/.zshrc")
