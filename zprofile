
export LSCOLORS=Fxgxhxdxcxexabagacad
export IGNOREEOF=1
export PS1='lappi3> '
export GREP_COLOR=32
export HISTFILESIZE=100000
export HISTSIZE=100000
export BC_ENV_ARGS="-l -q $HOME/.bcrc"

# (don't call this in Terminal/iTerm, only X11)
#xset b off

export PATH=$PATH:/opt/homebrew/bin:$HOME/scripts

export MANPATH=/opt/homebrew/manpages

export PYTHONPATH=/opt/homebrew/lib/root

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home
#export PATH=$JAVA_HOME:$PATH

source /opt/homebrew/opt/modules/init/zsh
export PATH=${PATH}:/Applications/MacVim.app/Contents/bin

