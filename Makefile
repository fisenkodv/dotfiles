.PHONY: install brew brew-restore

install:
	./scripts/install

brew:
	brew update
	brew upgrade
	brew bundle install --file=brew/brewfile
	brew cleanup
