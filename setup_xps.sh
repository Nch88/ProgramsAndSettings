rm $HOME/.zshrc
ln -s $(pwd)/zsh/.zshrc $HOME/.zshrc

mkdir -p $HOME/.i3
rm $HOME/.i3/config
ln -s $(pwd)/i3/config_xps $HOME/.i3/config

rm $HOME/.i3/lock_screen.png
ln -s $(pwd)/lock_screen.png $HOME/.i3/lock_screen.png

rm $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s $(pwd)/Sublime/user-settings $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

rm "$HOME/.config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap"
ln -s $(pwd)/Sublime/key-bindings "$HOME/.config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap"

gsettings set org.gnome.desktop.background show-desktop-icons false

rm $HOME/.config/redshift.conf
ln -s $(pwd)/redshift/redshift.conf $HOME/.config/redshift.conf

rm $HOME/.config/Code/User/settings.json
ln -s $(pwd)/vscode/settings.json $HOME/.config/Code/User/settings.json

rm $HOME/.config/Code/User/keybindings.json
ln -s $(pwd)/vscode/keybindings.json $HOME/.config/Code/User/keybindings.json