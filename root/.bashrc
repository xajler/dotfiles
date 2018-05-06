stty -ixon
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 9)\][\[$(tput setaf 11)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 12)\]\h \[$(tput setaf 13)\]\W\[$(tput setaf 9)\]]\[$(tput setaf 15)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 9)\][\[$(tput setaf 11)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 12)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 13)\]\W\[$(tput setaf 9)\]]\[$(tput setaf 15)\]\\$ \[$(tput sgr0)\]"
fi


# System Maintainence
alias hrtime="timedatectl set-timezone Europe/Zagreb && i3 restart"
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias sdn="systemctl poweroff"
alias newnet="sudo systemctl restart wpa_supplicant@wlp3s0" # Refresh wifi
alias nf="clear && neofetch" # Le Redditfetch
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias btoff="bluetooth off"
alias bton="bluetooth on"

#Directory Shortcuts:
alias la="ls -al"
alias r="cd / && ls -a"
alias vim="nvim"


# Some aliases
alias p="pacman"
alias v="vim"
alias r="ranger"
alias ka="killall"
alias g="git"
alias gitup="git push origin master"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias rf="source ~/.bashrc"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Internet
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Misc
#alias fake="mono /home/x/src/qualtrak/Fake/tools/FAKE.exe"
alias hfspmnt="mount -t hfsplus /dev/sdb2 /mnt/usb"
alias i3tree="i3-msg -t get_tree"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

