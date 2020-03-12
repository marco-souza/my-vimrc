PLUG_PATH=$HOME/.vim/autoload/plug.vim
PLUG_URL=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
VIMRC_PATH=$HOME/.vimrc

echo "\nStarting vim setup, wait wait, wait a minute...\n"
sleep 1

if [ ! -f "$PLUG_PATH" ]; then
  echo "* Installing Plugin Manager (Plug)..."
  curl -sfLo $PLUG_PATH --create-dirs $PLUG_URL
  sleep 1
fi

echo "* Copying configuration..."
cp .vimrc $VIMRC_PATH
sleep 1

echo "* Installing Plugins..."
vim +'PlugInstall --sync' +qall &> /dev/null < /dev/tty
sleep 1

echo "\nDone!\nHave a Happy coding :)"
sleep 1
