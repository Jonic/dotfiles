install:
	echo "Removing old config files"

	rm ~/.gemrc
	rm ~/.gitconfig
	rm ~/.hyper.js
	rm ~/.jshintrc
	rm ~/.npmrc
	rm ~/.ruby-version
	rm ~/.ssh/config
	rm ~/.vimrc
	rm ~/.zshenv
	rm ~/.zshrc

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
