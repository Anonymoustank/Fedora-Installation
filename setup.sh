#!/bin/bash

sudo dnf -y install passwd

sudo dnf -y install cracklib-dicts

sudo dnf -y install findutils

echo "Enter your new chroot username"

read username

useradd $username

sudo usermod -aG wheel $username

passwd $username