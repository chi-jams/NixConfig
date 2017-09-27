
vimrc_location=$(readlink -f vimrc)
echo $vimrc_location
ln -s $vimrc_location $HOME/.vimrc

monokai_location=$(readlink -f monokai.vim)
echo $monokai_location
mkdir $HOME/.vim
mkdir $HOME/.vim/colors
ln -s $monokai_location $HOME/.vim/colors/monokai.vim
