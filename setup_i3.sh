
i3cfg_location=$(readlink -f i3config)
if [ ! -d $HOME/.config/i3 ]; then
    mkdir $HOME/.config/i3
fi
if [ $HOME/.config/i3/config ]; then
    mv $HOME/.config/i3/config $HOME/.config/i3/config.bak
fi

ln -s $i3cfg_location $HOME/.config/i3/config

i3status_cfg=$(readlink -f i3status.conf)
if [ ! -d $HOME/.config/i3status ]; then
    mkdir $HOME/.config/i3status
fi
if [ $HOME/.config/i3status/config ]; then
    mv $HOME/.config/i3status/config $HOME/.config/i3status/config.bak
fi
ln -s $i3status_cfg $HOME/.config/i3status/config
