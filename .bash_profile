# .bash_profile

# Main exports.
export PATH=$HOME/.local/bin:$HOME/.scripts:$PATH
export EDITOR="vim"
export TERMINAL="st" # "urxvt"
export FEH_SLIDES="$HOME/Pictures/wallpapers"
#export BROWSER="qutebrowser"
export BROWSER="firefox"

# Get additional exports
[[ -f $HOME/.exports ]] && . $HOME/.exports
[[ -f $HOME/.exports_private ]] && . $HOME/.exports_private

# Get the aliases and functions
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

# Use .dircolors
DC=$HOME/.dircolors
test -r $DC && eval "$(dircolors $DC)"

if [[ ! $DISPLAY ]]; then
	if [[ "$EUID" -ne 0 ]]; then
		exec startx
	fi
fi
