
export LSCOLORS=Fxgxhxdxcxexabagacad
export IGNOREEOF=1
export PS1='lappi3> '
export HISTFILESIZE=100000
export HISTSIZE=100000
export SAVEHIST=100000
export HISTCONTROL=ignoredups:ignorespace
export BC_ENV_ARGS="-l -q $HOME/.bcrc"
export JAVA_HOME=/opt/homebrew/opt/openjdk@25
export PATH=$JAVA_HOME/bin:$PATH

export PATH=/opt/homebrew/bin:$PATH
export MANPATH=/opt/homebrew/manpages:$MANPATH

export CLAS12DIR=$HOME/sw/coatjava/coatjava
#export PATH=$CLAS12DIR/bin:$PATH

#source /opt/homebrew/opt/modules/init/zsh

#export HIPO=$HOME/sw/hipo-cpp/install

eval "$(/opt/homebrew/bin/brew shellenv zsh)"
