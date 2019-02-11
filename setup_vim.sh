
vimrc_location=$(readlink -f vimrc)
ln -s $vimrc_location $HOME/.vimrc
