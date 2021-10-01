
set prompt="%m> "
set color
set colorcat
set autolist
set noclobber
set rmstar
set nobeep
set history=100000
set ignoreeof=2
unset autologout

alias grep '/bin/grep --color=auto'
alias ls  '/bin/ls --color=auto'
alias rm  '/bin/rm -i'
alias cp  '/bin/cp -i'
alias mv  '/bin/mv -i'
alias cls '/usr/bin/clear ; ls'
alias psb '/bin/ps x -U $USER'
alias root "root -l"
alias calc "$HOME/scripts/calc.sh"
alias tree "$HOME/apps/bin/tree"
alias git /apps/bin/git

#alias lpcs05landscape "lp -d cs05 -o sides=two-sided-short-edge"
#alias lpcs05portrait  "lp -d cs05 -o sides=two-sided-long-edge"

## stuff for SCREEN
#if ( $?TERMCAP ) then
#    # added this here to get screen to stop dropping LD_LIBRARY_PATH:
#    if ( $?LD_LIBRARY_PATH ) then 
#        setenv LD_LIBRARY_PATH ${TOP_DIR}/lib/${OS_NAME}:${TOP_DIR}/slib/${OS_NAME}:${ROOTLIB}:${MYSQLIB}:${TCL_LIB}:${LD_LIBRARY_PATH}
#    else
#        setenv LD_LIBRARY_PATH ${TOP_DIR}/lib/${OS_NAME}:${TOP_DIR}/slib/${OS_NAME}:${ROOTLIB}:${MYSQLIB}:${TCL_LIB}
#    endif
#endif

