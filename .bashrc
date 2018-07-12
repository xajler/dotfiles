stty -ixon
# Allows you to cd into directory merely by typing the directory name.
shopt -s autocd

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 9)\][\[$(tput setaf 11)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 12)\]\h \[$(tput setaf 13)\]\W\[$(tput setaf 9)\]]\[$(tput setaf 15)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 9)\][\[$(tput setaf 11)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 12)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 13)\]\W\[$(tput setaf 9)\]]\[$(tput setaf 15)\]\\$ \[$(tput sgr0)\]"
fi

# System Maintainence
alias hrtime="sudo timedatectl set-timezone Europe/Zagreb && i3 restart"
alias pingme="ping -c 3 ksphoto.me"
alias apps="(pacman -Qet && pacman -Qm) | sort -u"
alias orphans="pacman -Qdt" # List orphan programs
alias rorphans="sudo pacman -Rns $(pacman -Qtdq)"
alias pcache="sudo pacman -Scc"
alias sdn="sudo systemctl poweroff"
alias newnet="sudo systemctl restart wpa_supplicant@wlp3s0" # Refresh wifi
alias vpnrestart="sudo systemctl restart openvpn-client@de-05" # Refresh vpn on suspend
alias nf="clear && neofetch"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias btoff="sudo bluetooth off"
alias bton="sudo bluetooth on"
alias ka="killall"
alias free="free -m"
alias du="du -sh"
alias df="df -h"

# Directory Shortcuts:
alias la="ls -al"
alias h="cd $HOME && ls -a"
alias cf="cd $HOME/.config && ls -a"
alias gtmu="cd /mnt/usb;ls -al"

# App aliases
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="nvim"
alias svi="sudo vim"
alias r="ranger"
alias g="git"
alias gitup="git push origin master"
alias trem="transmission-remote"
alias mkd="mkdir -pv"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata --extract-audio --audio-format mp3" # Download only audio
#youtube-dl --extract-audio --audio-format mp3
alias YT="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias tpbs="clear && figlet -c TPB Search && tpb.sh" # Pirate Bay search
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Misc
alias srcbash="source $HOME/.bash_profile"
alias hfspmnt="sudo mount -t hfsplus /dev/sdb2 /mnt/usb"
alias remaptomod="xmodmap -e 'keycode 107 = Super_L'"
#For ThinkPad t440s
alias outputtoprojector="xrandr --output VGA1 --mode 1024x768 --same-as eDP1"
# For ThinkPad x220
#alias outputtoprojector="xrandr --output VGA1 --mode 1024x768 --same-as LVDS1"
#alias recplaymic='arecord -d 10 "/tmp/$1-test-mic.waw"; aplay "/tmp/$1-test-mic.waw"'

[[ -f $HOME/.bashrc_extra_alias ]] && . $HOME/.bashrc_extra_alias
[[ -f $HOME/.bashrc_private ]] && . $HOME/.bashrc_private

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/x/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/x/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/x/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/x/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash