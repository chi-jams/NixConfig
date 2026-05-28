
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

zshrc_location=$(readlink -f zshrc)
ln -fs $zshrc_location $HOME/.zshrc

p10k_location=$(readlink -f p10k.zsh)
ln -fs $p10k_location $HOME/.p10k.zsh
