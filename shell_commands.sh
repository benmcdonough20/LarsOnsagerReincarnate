## copying files FROM grace
scp grace:/home/rh848/ising/ising_modified.py /Users/Ruobin/Desktop/YALE/Spring2023/PHYS382L/ising
scp /Users/Ruobin/Desktop/YALE/Spring2023/PHYS382L/ising/ising.py grace:/home/rh848/ising/


#editing jobs parameters
scontrol update jobid=17279668 partition=day TimeLimit=1:00:00

module load dSQ; dsq --job-file 100_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 20:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 90_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 18:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 80_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 16:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 70_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 14:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 60_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 12:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 50_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 10:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 40_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 8:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 30_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 6:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 20_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 4:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
module load dSQ; dsq --job-file 10_job_array.txt --partition day --cpus-per-task=36 --mem 180g -t 2:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue

for f in $(find ./* -maxdepth 0 -name '*dsq*sh'); do sbatch $f; rm $f; done