.PHONY: all test install clean

all: install

test:
	@echo "Please note:"
	@echo " * You need to run 'npm install' to get most of the required tools."
	@echo " * shellcheck is available in Homebrew via 'brew install shellcheck' or,"
	@echo "   otherwise, install via cabal (<https://github.com/koalaman/shellcheck>)."
	@echo " * The Makefile can instigate all lifecycle tasks (the only npm script is for"
	@echo "   testing)."
	@echo " * Running the tests does actually update the contents of the JSON files if"
	@echo "   they need sorting. For this reason, 'git add .' is run before committing."
	@echo
	npx jsonsort '*.json'  # pass glob as string so we get the dotfiles
	npx eclint check .
	npx shellcheck --check-sourced project-dotfiles

install: test
	ln -s $(CURDIR)/project-dotfiles ~/bin/

clean:
	-rm ~/bin/project-dotfiles
