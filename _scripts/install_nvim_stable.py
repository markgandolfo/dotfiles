#!/usr/bin/env python3

import os
import subprocess
import sys
from pathlib import Path


def run_command(command, cwd=None):
    """Run a shell command and print output."""
    print(f"Running: {command}")
    result = subprocess.run(command, shell=True, cwd=cwd, check=False)
    if result.returncode != 0:
        print(f"Error: Command failed with exit code {result.returncode}")
        sys.exit(result.returncode)
    return result


def install_dependencies():
    """Install required dependencies for Neovim."""
    print("Installing dependencies...")
    dependencies = [
        "ninja-build",
        "gettext",
        "cmake",
        "unzip",
        "curl",
        "git",
        "build-essential"
    ]

    run_command(f"sudo apt-get update")
    run_command(f"sudo apt-get install -y {' '.join(dependencies)}")


def clone_neovim():
    """Clone the Neovim repository (stable branch)."""
    print("Cloning Neovim stable branch...")

    # Create temporary directory for the clone
    temp_dir = Path.home() / "neovim_build"
    if temp_dir.exists():
        print(f"Build directory {temp_dir} already exists, removing it...")
        run_command(f"rm -rf {temp_dir}")

    temp_dir.mkdir(exist_ok=True)

    # Clone the repository with the stable branch
    run_command("git clone https://github.com/neovim/neovim.git --branch stable", cwd=temp_dir)

    return temp_dir / "neovim"


def build_and_install(neovim_dir):
    """Build and install Neovim to ~/.local/."""
    print("Building and installing Neovim...")

    # Set up installation directory
    install_dir = Path.home() / ".local"

    # Configure with cmake and build
    run_command("make CMAKE_BUILD_TYPE=Release", cwd=neovim_dir)

    # Install to ~/.local/
    run_command(f"make CMAKE_INSTALL_PREFIX={install_dir} install", cwd=neovim_dir)


def clean_up(build_dir):
    """Clean up the build directory."""
    print("Cleaning up build directory...")
    run_command(f"rm -rf {build_dir}")


def main():
    print("Starting Neovim installation process...")

    # Install dependencies
    install_dependencies()

    # Clone Neovim
    neovim_dir = clone_neovim()

    # Build and install
    build_and_install(neovim_dir)

    # Clean up
    parent_dir = neovim_dir.parent
    clean_up(parent_dir)

    print("\nNeovim has been successfully installed to ~/.local/")
    print("Make sure ~/.local/bin is in your PATH by adding this to your shell configuration:")
    print("export PATH=\"$HOME/.local/bin:$PATH\"")

    # Test if neovim works
    nvim_path = Path.home() / ".local" / "bin" / "nvim"
    if nvim_path.exists():
        print(f"\nNeovim is installed at: {nvim_path}")
        print("You can test it with: ~/.local/bin/nvim --version")
    else:
        print("\nWarning: Neovim executable not found at the expected location.")

if __name__ == "__main__":
    main()
