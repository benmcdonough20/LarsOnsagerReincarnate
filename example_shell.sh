#!/bin/bash
#SBATCH --partition=pi-esi
#SBATCH -A batista
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=36
#SBATCH --time 10:00
#SBATCH --no-requeue
#SBATCH --mem=180GB
#SBATCH -J jobname
#SBATCH -o outfile.out
#SBATCH -e errfile.err
#SBATCH --mail-type=END
#SBATCH --mail-user=ruobin.han@yale.edu
module load miniconda
conda activate qutip-env
python3 ising.py multiprocess:True t_min:0.1 t_max:5.0 t_step:0.005 N:100 n_steps:600000 n_burnin:450000 n_analyze:50000 flip_perc:0.01