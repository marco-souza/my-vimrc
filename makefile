ALL: update apply submit

apply: .vimrc
	cp -rf .vim ~/.vim
	cp .vimrc ~/.vimrc

submit:
	git commit -a
	git push origin --all

update:
	git pull origin
