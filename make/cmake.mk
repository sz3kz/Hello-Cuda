.PHONY: cmake-init cmake-update cmake-purge

ROOT_DIRECTORY=external/dotfiles/
CPP_DIRECTORY=CPP/
MAKEFILE_DIRECTORY=make/
CMAKE_CLIENT_MAKEFILE=cmake.mk

cmake-init:
	git submodule add --force --depth 1 https://github.com/sz3kz/dotfiles.git ${ROOT_DIRECTORY}
	cd ${ROOT_DIRECTORY} && git sparse-checkout init --cone && git sparse-checkout set ${CPP_DIRECTORY}

cmake-update:
	git submodule update --init --remote
	cd ${ROOT_DIRECTORY}${CPP_DIRECTORY} && make deploy

cmake-purge:
	git rm -f ${ROOT_DIRECTORY}
	git config -f .git/config --remove-section submodule.external/dotfiles
	rm -rf .git/modules/external/dotfiles
	rm ${MAKEFILE_DIRECTORY}${CMAKE_CLIENT_MAKEFILE}
	-rmdir ${MAKEFILE_DIRECTORY}
