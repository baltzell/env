
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

echo -ne "\033]0;"ifarm1901"\007"

set -o noclobber
set -o ignoreeof

alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias cls="clear ; ls"
alias psb="/bin/ps -U $USER -o pid,start,%cpu,%mem,nice,stat,comm"
alias dateit="/bin/date +%F_%H-%M-%S"
alias root="root -l"
alias calc="$HOME/scripts/calc.sh"
alias tree="$HOME/apps/bin/tree"
alias tmux="export TERM=screen-256color && tmux"

export PS1="\h> "
export GREP_COLOR=32

export EDITOR=vim
export VISUAL=vim

export BC_ENV_ARGS="-l -q $HOME/.bcrc"

export HISTCONTROL=ignoreboth
export HISTFILESIZE=1000000
export HISTSIZE=1000000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# stop escaping $ during tab completion:
#shopt -s direxpand

shopt -u progcomp

