# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export PATH=$HOME/.scripts:$HOME/.bin:$HOME/.npm-global/bin:/opt/mssql-tools/bin:$PATH
export EDITOR="vim"
export TERMINAL="st" #"urxvt"
export FEH_SLIDES="$HOME/Pictures/wallpapers"
export BROWSER="qutebrowser"

# M$ BS
export DOTNET_CLI_TELEMETRY_OPTOUT=1

if [[ ! $DISPLAY ]]; then
  exec startx
fi
