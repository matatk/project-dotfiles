.PHONY: all setup-mac-homebrew-node setup-linux-apt-node test install clean

all: install

# NOTE: The setup-* tasks don't install Node because the user may have
#       pinned a specific version.

setup-mac-homebrew-node:
	npm install
	brew install editorconfig-checker shellcheck

setup-linux-apt-node:  # TODO: Test.
	npm install
	apt-get install editorconfig-checker shellcheck

test:
	@echo "The following tools are needed:"
	@echo " * NPM packages as per package.json"
	@echo " * editorconfig-checker"
	@echo " * shellcheck"
	@echo "There are setup-* make targets to shortcut this for you."
	@echo
	@echo "Please note:"
	@echo " * The Makefile can instigate all lifecycle tasks (the only npm script is for"
	@echo "   testing)."
	@echo " * Running the tests does actually update the contents of the JSON files if"
	@echo "   they need sorting. For this reason, 'git add .' is run before committing."
	@echo
	npx jsonsort '.*.json'  # https://github.com/codsen/codsen/issues/12
	editorconfig-checker
	shellcheck --check-sourced project-dotfiles

install: test clean
	ln -s $(CURDIR)/project-dotfiles ~/bin/

clean:
	-rm ~/bin/project-dotfiles
