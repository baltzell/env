
umask 022
ulimit -c 0

export PATH=/site/bin:/apps/bin:${PATH}

module use /cvmfs/oasis.opensciencegrid.org/jlab/scicomp/sw/el7/modulefiles/

#source /group/clas12/packages/setup-new.sh

export MAVEN_OPTS="-Dmaven.repo.local=/scratch/baltzell/m2"
export SINGULARITY_CACHEDIR=/scratch/baltzell/singularity-cache

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

