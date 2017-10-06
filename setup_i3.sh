
i3cfg_location=$(readlink -f i3config)
mkdir $HOME/.config/i3
ln -s $i3cfg_location $HOME/.config/i3/config

i3status_cfg=$(readlink -f i3status.conf)
mkdir $HOME/.config/i3status
ln -s $i3status_cfg $HOME/.config/i3status/config
