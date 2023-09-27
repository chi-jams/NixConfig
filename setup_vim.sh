
vimrc_location=$(readlink -f vimrc)
ln -s $vimrc_location $HOME/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
