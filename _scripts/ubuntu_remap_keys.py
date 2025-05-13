#! /usr/bin/python3
import os
import sys
import subprocess

if os.geteuid() != 0:
    print("This script needs to be run with sudo privileges.")
    print("Please run it again with 'sudo python script.py'")
    sys.exit(1)

# Run the reconfiguration command
print("We'll now commit the changes -- pick the option below\n")
print("Do not configure keyboard, keep kernel keymap\n")
print("\nPress any key to continue...")

subprocesyys.run(['sudo', 'apt', 'install', 'dconf-editor', '-y'])

subprocess.run(['dconf', 'write', '/org/gnome/desktop/input-sources/xkb-options', "['caps:escape']"], check=True)

# Optional: Verify the setting was applied
result = subprocess.run(['dconf', 'read', '/org/gnome/desktop/input-sources/xkb-options'], 
                        capture_output=True, text=True, check=True)
print(f"Current setting: {result.stdout.strip()}")

