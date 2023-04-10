## copying files FROM grace
scp grace:/home/rh848/ising/ising_modified.py /Users/Ruobin/Desktop/YALE/Spring2023/PHYS382L/ising
scp /Users/Ruobin/Desktop/YALE/Spring2023/PHYS382L/ising/ising.py grace:/home/rh848/ising/
scontrol update jobid=17279668 partition=day TimeLimit=1:00:00

module load dSQ; dsq --job-file job_array.txt --partition day --cpus-per-task=36 --mem-per-cpu 180g -t 12:00:00 --mail-type END --mail-user ruobin.han@yale.edu --no-requeue
