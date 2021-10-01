
#########################################################################
#
# This comes with the stock JLab env and puts /site/bin (swif/jcache/etc)
# and /apps/bin (git/gnuplot/etc) and various others in $PATH, set the
# "use/setup" aliases, adds an /apps module path, and some other stuff:
#
# source /site/env/syscshrc
#
# But that also puts . in $PATH, so strip it out:
#
#setenv PATH `echo $PATH | sed 's/:\.:/:/' |  sed 's/:\.$//g' | sed 's/^\.://'`
#
# Or, instead, pull just the few good things out of /site/env/syscshrc:
#
umask 022
limit coredumpsize 0
setenv PATH ${PATH}:/site/bin:/apps/bin
module use /apps/modulefiles
#
#########################################################################

# move default cache locations out of $HOME:
setenv MAVEN_OPTS "-Dmaven.repo.local=/scratch/baltzell/m2"
setenv SINGULARITY_CACHEDIR /scratch/baltzell/singularity-cache

setenv EDITOR vim
setenv VISUAL vim

setenv BC_ENV_ARGS "-l -q $HOME/.bcrc"
setenv GREP_COLOR 32
setenv PRINTER lp
setenv LPDEST lp

source /group/clas12/packages/setup.csh

