.PHONY: submodule-init submodule-update 

submodule-init:
	git submodule add --force --depth 1 https://github.com/sz3kz/dotfiles.git external/dotfiles
	cd external/dotfiles && git sparse-checkout init --cone && git sparse-checkout set DEVELOPMENT/cpp_and_cuda

submodule-update:
	git submodule update --remote --merge
