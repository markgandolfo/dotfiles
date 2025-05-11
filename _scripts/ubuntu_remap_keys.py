#! /usr/bin/python3
import os
import sys
import subprocess

if os.geteuid() != 0:
    print("This script needs to be run with sudo privileges.")
    print("Please run it again with 'sudo python script.py'")
    sys.exit(1)

# Open the file and read its contents
with open('/etc/default/keyboard', 'r') as file:
    content = file.read()

# Replace XKBOPTIONS="" with XKBOPTIONS="caps:escape"
updated_content = content.replace('XKBOPTIONS=""', 'XKBOPTIONS="caps:escape"')

# Write the updated content back to the file (requires sudo)
with open('/etc/default/keyboard', 'w') as file:
    file.write(updated_content)

# Run the reconfiguration command
print("We'll now commit the changes -- pick the option below\n")
print("Do not configure keyboard, keep kernel keymap\n")
print("\nPress any key to continue...")

subprocess.run(['sudo', 'dpkg-reconfigure', 'keyboard-configuration'])

