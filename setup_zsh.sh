
zshrc_location=$(readlink -f zshrc)
ln -s $zshrc_location $HOME/.zshrc
