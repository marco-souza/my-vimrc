ALL: update apply submit

install:
	# Clone vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp .vimrc .neovimrc ~/
	vim +PluginInstall +qall


apply: .vimrc
	cp -rf .vim ~/.vim
	cp .vimrc ~/.vimrc

submit:
	git commit -a
	git push origin --all

update:
	git pull origin
