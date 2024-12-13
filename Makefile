.PHONY: install brew

install:
	./.scripts/install.sh

brew:
	brew update
	brew upgrade
	brew bundle install --file=os/macos/brew/brewfile
	brew cleanup
