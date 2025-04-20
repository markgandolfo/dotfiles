# Dotfiles

A simple dotfiles manager for my personal configuration files.

## Overview

This repository contains my personal configuration files (dotfiles) for various applications and tools. It uses a simple symlink approach to manage configurations and sets up your shell environment.

## Installation

### 1. Clone the repository into your `~/.config` directory:

```bash
git clone https://github.com/markgandolfo/dotfiles.git ~/.config/dotfiles
```

### 2. Before you run

Before running the initialisation script (`init.sh`), ensure you have the following applications installed:
- [Zsh](https://www.zsh.org/)
- [Alacritty](https://github.com/alacritty/alacritty/)
- [Oxker](https://github.com/mrjackwills/oxker)
- [Git](https://git-scm.com/)

### 3. Run the initialisation script:

```bash
cd ~/.config/dotfiles
./init.sh
```

## What does init.sh do?

The initialization script:

1. Creates symbolic links from the configuration directories to their appropriate locations in `~/.config/`
2. Adds a source line to your `.zshrc` file to load additional zsh configurations
3. Preserves any existing configurations by showing warnings instead of overwriting

## Directory Structure

```
~/.config/dotfiles/
├── init.sh            # Initialization script
├── zsh/               # ZSH configuration files
│   ├── mark.zsh       # entry point for ./zshrc to source
│   ├── exports.zsh
│   ├── paths.zsh
│   └── alias.zsh
├── oxker/             # Oxker configuration
├── alacritty/         # Alacritty terminal configuration
└── ...                # Other tool configurations
```

## Adding New Configurations

To add new application configurations:

1. Create a directory in the repository root with the application name
2. Add your configuration files to this directory
3. Run `./init.sh` again to create the necessary symlinks

## Customisation

Feel free to modify any of the configuration files to suit your preferences. After making changes, configurations will update automatically since they're symlinked.

## Updating

To update your dotfiles with the latest changes from the repository:

```bash
cd ~/.config/dotfiles
git pull
./init.sh
```

## License

MIT

## Contact

If you have any questions or suggestions, please feel free to [open an issue](https://github.com/markgandolfo/dotfiles/issues) on the repository.
