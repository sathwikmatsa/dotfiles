#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add .scripts to path
PATH=$PATH:~/.scripts

# set askpass program
export SUDO_ASKPASS="$HOME/.scripts/dmenupass"

export PATH="$HOME/.cargo/bin:$PATH"

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export FILE="vifm"
export READER="zathura"

# FZF
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --color=always --ignore-file ~/.ignore'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --ansi'
