#!/bin/zsh

#PBS -j oe
#PBS -q N
#PBS -N SymmetryDDPPythonjob

echo "Starting on `hostname`, `date`"
echo "jobs id: ${PBS_JOBID}"

# NOTE: working directory is defaultly set to be the
#       user's home directory at the cluster

git pull
pip install -r $REPO_RELPATH/requirements.txt
python $SCRIPT_RELPATH $PYTHON_ARGS

echo "Done, `date`"