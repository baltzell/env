[ -z "$PS1" ] && return

export PS1='lappi3> '

alias ls='ls -G'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias su='su -l'
alias cls='clear ; ls'
alias psb='ps -U $USER -o pid,start,%cpu,%mem,nice,stat,comm'
alias grep='grep -n --color=auto'
alias ssh='ssh -Y'
alias gitpass='cat ~/.gitpass | pbcopy'
alias gvim='/Applications/MacVim.app/Contents/bin/gvim'
alias chef='f(){ssh -Y ifarm -t ssh -Y $1@ifarm};f'
alias netbeans='/Applications/Apache\ NetBeans.app/Contents/MacOS/netbeans --jdkhome $JAVA_HOME >& /dev/null'
alias visualvm='/Applications/VisualVM.app/Contents/MacOS/visualvm --jdkhome $JAVA_HOME'
alias vncviewer='f(){open vnc://localhost:590${1#:}};f'
alias vncssh='f(){ssh -L 590${2#:}:localhost:5901${2#:} $1};f'

function cvmfs {
    y=( sft.cern.ch oasis.opensciencegrid.org )
    [ $# -ne 0 ] && y="$@"
    for x in "${@:1:$#-1}"; do
        if ! ( mount | grep $x >& /dev/null )
        then
            sudo mount -t cvmfs $x /cvmfs/$x
        fi
    done
}

