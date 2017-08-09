rm $HOME/.zshrc
ln -s $(pwd)/zsh/.zshrc $HOME/.zshrc

mkdir -p $HOME/.i3
rm $HOME/.i3/config
ln -s $(pwd)/i3/config $HOME/.i3/config

rm $HOME/.i3/lock_screen.png
ln -s $(pwd)/lock_screen.png $HOME/.i3/lock_screen.png