# THIS SCRIPT IS UNTESTED, YOU HAVE BEEN WARNED
# This is the steps to setup swap based on the instruction to create a swap file
# from https://wiki.archlinux.org/index.php/swap

fallocate -l 2G /swap

chmod 600 /swap

mkswap /swap

swapon /swap

# Create backup in case of explosion
cp /etc/fstab /etc/fstab.bak

echo "/swapfile non swap default 0 0" >> /etc/fstab
