install:
	echo "Removing old config files"

	rm -f ~/.gemrc
	rm -f ~/.gitconfig
	rm -f ~/.hyper.js
	rm -f ~/.jshintrc
	rm -f ~/.npmrc
	rm -f ~/.ruby-version
	rm -f ~/.ssh/config
	rm -f ~/.vimrc
	rm -f ~/.zshenv
	rm -f ~/.zshrc

	echo "Linking new config files"

	ln -s ~/.dotfiles/gemrc        ~/.gemrc
	ln -s ~/.dotfiles/gitconfig    ~/.gitconfig
	ln -s ~/.dotfiles/hyper.js     ~/.hyper.js
	ln -s ~/.dotfiles/jshintrc     ~/.jshintrc
	ln -s ~/.dotfiles/npmrc        ~/.npmrc
	ln -s ~/.dotfiles/ruby-version ~/.ruby-version
	ln -s ~/.dotfiles/ssh-config   ~/.ssh/config
	ln -s ~/.dotfiles/vimrc        ~/.vimrc
	ln -s ~/.dotfiles/zshenv       ~/.zshenv
	ln -s ~/.dotfiles/zshrc        ~/.zshrc
