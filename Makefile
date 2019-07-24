.PHONY: all test install clean

all: install

test:
	@echo "Please note:"
	@echo " * You need to run 'npm install' to get most of the required tools."
	@echo " * shellcheck is available in Homebrew via 'brew install shellcheck' or,"
	@echo "   otherwise, install via cabal (<https://github.com/koalaman/shellcheck>)."
	@echo " * The Makefile can instigate all lifecycle tasks (the only npm script is for"
	@echo "   testing)."
	@echo
	npx jsonlint -q *.json
	npx eclint check .
	npx shellcheck --check-sourced project-dotfiles

install: test
	ln -s $(CURDIR)/project-dotfiles ~/bin/

clean:
	-rm ~/bin/project-dotfiles
