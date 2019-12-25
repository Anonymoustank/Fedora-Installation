#!/bin/bash

sudo dnf -y install passwd

sudo dnf -y install cracklib-dicts

sudo dnf -y install findutils

exec 0<&1

read -p 'Enter your chroot username: ' new_user

useradd $new_user

sudo usermod -aG wheel $new_user

passwd $new_user
