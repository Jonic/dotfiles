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

	ln -s ./gemrc        ~/.gemrc
	ln -s ./gitconfig    ~/.gitconfig
	ln -s ./hyper.js     ~/.hyper.js
	ln -s ./jshintrc     ~/.jshintrc
	ln -s ./npmrc        ~/.npmrc
	ln -s ./ruby-version ~/.ruby-version
	ln -s ./ssh-config   ~/.ssh/config
	ln -s ./vimrc        ~/.vimrc
	ln -s ./zshenv       ~/.zshenv
	ln -s ./zshrc        ~/.zshrc
