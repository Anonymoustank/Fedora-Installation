#!/bin/bash

dnf -y install passwd

dnf -y install cracklib-dicts

dnf -y install findutils

exec 0<&1

read -p 'Enter your chroot username: ' new_user

useradd $new_user

usermod -aG wheel $new_user

passwd $new_user
