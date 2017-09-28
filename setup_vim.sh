
vimrc_location=$(readlink -f vimrc)
ln -s $vimrc_location $HOME/.vimrc

monokai_location=$(readlink -f monokai.vim)
mkdir $HOME/.vim
mkdir $HOME/.vim/colors
ln -s $monokai_location $HOME/.vim/colors/monokai.vim
