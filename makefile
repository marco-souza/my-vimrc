ALL: update apply submit

install:
	# Clone vundle
	if [ ! -d ~/.vim/bundle/Vundle.vim ]; then \
		echo "Installing Vundle..."; \
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; \
	fi
	cp .vimrc .neovimrc ~/;
	vim +PluginInstall +qall;

submit:
	git commit -a
	git push origin --all

update:
	git pull origin
