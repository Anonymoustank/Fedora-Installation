#!/bin/bash

dnf -y install passwd cracklib-dicts findutils

read -p 'Enter your chroot username: ' new_user

useradd $new_user

usermod -aG wheel $new_user

passwd $new_user
