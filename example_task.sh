#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=96
#SBATCH --cpus-per-task=1
#SBATCH --mem=60G
#SBATCH --time=20-00:00:00
#SBATCH --job-name=FDMNESTask
#SBATCH --mail-type=END
#SBATCH --mail-user=${USER}@kent.ac.uk
#SBATCH --output=./%j.out
#SBATCH --error=./%j.err
echo "Starting..."

CONDAENV=FDMNESenv

##Initialisation Section
source /home/${USER}/.bashrc #to get conda
conda activate ${CONDAENV} #activate conda env providing MPI
export LD_LIBRARY_PATH=/home/${USER}/miniconda3/envs/${CONDAENV}/lib #MPI library path

./mpirun_fdmnes -np 96 > FDMNES.log

echo "...Complete"
