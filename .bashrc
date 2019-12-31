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
alias dotfiles='/usr/bin/git --git-dir=/home/sathwik/.dotfiles/ --work-tree=/home/sathwik'
