
gitconfig_location=$(readlink -f gitconfig)
ln -sf $gitconfig_location $HOME/.gitconfig

