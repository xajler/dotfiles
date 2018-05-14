# .bash_profile

# Main exports.
export PATH=$HOME/.scripts:$HOME/.bin:$HOME/.npm-global/bin:/opt/mssql-tools/bin:$PATH
export EDITOR="vim"
export TERMINAL="st" #"urxvt"
export FEH_SLIDES="$HOME/Pictures/wallpapers"
export BROWSER="qutebrowser"

[ -f $HOME/.exports ] && . $HOME/.exports

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

if [[ ! $DISPLAY ]]; then
  exec startx
fi
