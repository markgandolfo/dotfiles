#!/usr/bin/env python3

import os
import shutil
import subprocess

def main():
    # Source and destination paths
    source_app = "../_macosx/alacritty.app"
    dest_app = "/Applications/alacritty.app"

    # Check if the source exists
    if not os.path.exists(source_app):
        print(f"Error: Source application '{source_app}' not found.")
        return

    # Check if the application already exists in Applications
    if os.path.exists(dest_app):
        print(f"Alacritty is already installed at '{dest_app}'.")
        return

    # Create a symlink
    print(f"Creating symlink to Alacritty at '{dest_app}'...")
    # Get absolute path for source
    abs_source = os.path.abspath(source_app)
    # Create symlink using ln command for better macOS compatibility
    subprocess.run(["ln", "-s", abs_source, dest_app], check=True)
    print("Symlink to Alacritty has been successfully created in Applications folder.")

if __name__ == "__main__":
    main()
