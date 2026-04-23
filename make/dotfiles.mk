.PHONY: dotfiles-activate dotfiles-update dotfiles-deinit dotfiles-refresh

SERVER_MAKEFILE_DIRECTORY=external/dotfiles/CPP/

dotfiles-activate:
	git submodule update --init
	cd external/dotfiles/ && git sparse-checkout init --cone
	cd external/dotfiles/ && git sparse-checkout set CPP/

dotfiles-update:
	cd ${SERVER_MAKEFILE_DIRECTORY} && make dotfiles-update

dotfiles-deinit:
	cd ${SERVER_MAKEFILE_DIRECTORY} && make dotfiles-deinit

dotfiles-refresh:
	cd ${SERVER_MAKEFILE_DIRECTORY} && make dotfiles-refresh
