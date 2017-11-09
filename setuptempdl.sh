# THIS CODE IS UNTESTED, YOU HAVE BEEN WARNED
# a script that just performs the commands for setting up a tempfs as a downloads
# directory. Source: https://wiki.archlinux.org/index.php/tmpfs
mkdir $HOME/Downloads

# Backup to revert in case of explosion
cp /etc/fstab /etc/fstab.bak

echo "tmpfs $HOME/Downloads tmpfs rw,size=1G,nr_inodes=5k,noexec,nodev,nosuid,uid=$USER,gid=$USER,mode=1700 0 0" >> /etc/fstab
