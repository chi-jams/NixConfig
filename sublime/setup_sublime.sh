
pref_location=$(readlink -f Preferences.sublime-settings)
ln -s $pref_location $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

ruby_pref_location=$(readlink -f Ruby.sublime-settings)
ln -s $ruby_pref_location $HOME/.config/sublime-text-3/Packages/User/Ruby.sublime-settings

keymap_location=$(readlink -f Default.sublime-keymap)
echo $keymap_location
ln -s $keymap_location $HOME/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap
