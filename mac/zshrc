
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PS1='lappi3> '

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
#shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

alias ls='ls -G'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias su='su -l'
alias cls='clear ; ls'
alias psb='ps -U $USER -o pid,start,%cpu,%mem,nice,stat,comm'
alias grep='grep -n --color=auto'
alias root='root -l'
alias ssh='ssh -Y'


function calc
{
    if [ -z $1 ]; then
        bc
    else
        echo $@ | bc
    fi
}

function vnctunnel
{
  if [ $# -eq 0 ]
  then
    echo "Usage: vnctunnel vncport [gwport [server]]"
    return
  fi
  vncpt=$1
  gwpt=$vncpt
  clon=clonsl3
  if [ "$vncpt" = "lappi" ]
  then
      vncpt=3
      gwpt=6
  elif [ "$vncpt" = "asus" ]
  then
      vncpt=2
      gwpt=6
  elif [ "$vncpt" = "llama" ]
  then
      vncpt=1
      gwpt=7
  fi
  if ! [ -z "$3" ]
  then
    clon=$3
  fi
  if ! [ -z "$2" ]
  then
    gwpt=$2
  fi
  gw=hallgw.jlab.org
  l=localhost
  echo ssh -Y -L 590$gwpt:$l:590$gwpt $gw -t ssh -Y -L 590$gwpt:$l:590$vncpt $clon
#       ssh -Y -L 590$gwpt:$l:590$gwpt $gw -t ssh -Y -L 590$gwpt:$l:590$vncpt $clon
}

function cvmfs {
    if ! ( mount | grep $1 >& /dev/null )
    then
        sudo mount -t cvmfs $1 /cvmfs/$1 &
    fi
}
cvmfs sft.cern.ch
cvmfs oasis.opensciencegrid.org
source /cvmfs/oasis.opensciencegrid.org/jlab/hallb/clas12/soft/setup.sh
source /cvmfs/sft.cern.ch/lcg/app/releases/ROOT/6.24.06/arm64-mac115-clang120-opt/bin/thisroot.sh

