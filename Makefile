.PHONY: install macos brew brew-restore

# Run dotbot install script
install:
	./install

# Set MacOS defaults
macos:
	./macos/set-defaults.sh

# Save snapshot of all Homebrew packages to macos/brewfile
brew:
	brew bundle dump -f --file=config/os/macos/brewfile
	brew bundle --force cleanup --file=config/os/macos/brewfile

# Restore Homebrew packages
brew-restore:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
	brew update
	brew upgrade
	brew install mas
	brew bundle install --file=config/os/macos/brewfile
	brew cleanup
