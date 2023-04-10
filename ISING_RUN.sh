#!/bin/bash
#SBATCH --partition=pi_esi
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=36
#SBATCH --time 12:00:00
#SBATCH --no-requeue
#SBATCH --mem=180GB
#SBATCH --mail-type=END
#SBATCH --mail-user=ruobin.han@yale.edu
! bash linux_compile_c_library.sh
module load miniconda
conda activate qutip-env
python3 ising_modified.py N:10
conda deactivate
