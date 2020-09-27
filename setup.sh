#!/bin/bash -e

dnf -y update

dnf -y install passwd cracklib-dicts findutils

dnf clean packages

dnf -y install passwd

dnf clean packages

dnf -y install glibc-langpack-en

read -p 'Enter your chroot username: ' new_user

useradd $new_user

usermod -aG wheel $new_user

passwd $new_user
