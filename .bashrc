#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Vi mode
set -o vi

source ~/.config/aliasrc

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

alias dotfiles='/usr/bin/git --git-dir=/home/sathwik/.dotfiles/ --work-tree=/home/sathwik'
