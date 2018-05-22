#!/bin/sh

SRC_PATH="$HOME/src/voidlinux-i3"
DOT_FILES=(".bash_profile" ".bashrc" ".bashrc_extra_alias" ".curlrc" ".dircolors" \
	".editorconfig" ".exports" ".inputrc" ".tmux.conf" ".urlview" ".Xdefaults" \
	".xinitrc" ".icons" ".scripts" ".themes" ".config")

doUpdate() {
	echo "Updating root dotfiles..."
	for item in "${DOT_FILES[@]}" ; do
		echo -e "\t$item"
		cp -rf "$SRC_PATH/$item" "$HOME"
	done

	rm -rf "$HOME/.vim"
	rm "$HOME/.vimrc"
	ln -sf "$HOME/.config/nvim" "$HOME/.vim"
	ln -sf "$HOME/.config/nvim/init.vim" "$HOME/.vimrc"
}

read -r -p "Are you sure to overwrite current home dotfiles from src? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]; then
	doUpdate;
else
	exit 0;
fi
