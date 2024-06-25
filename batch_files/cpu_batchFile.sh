#!/bin/bash
#SBATCH --job-name=cpu_hyper
#SBATCH --partition=cs
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1

#srun apptainer run --bind ./data:/mnt,./:/images shighton_hsi_aum-ung-hsi-research-7-31-2023.sif

#apptainer exec  --bind ./data:/mnt,./:/images test_move_pip.sif python /workspace/main.py --model nn --dataset PaviaC --training_sample 0.95 --runs 1

# apptainer exec --bind ./data:/mnt,./:/images shighton_hsi_aum-ung-hsi-research-7-31-2023.sif pip list 

# apptainer exec  --bind ./data:/mnt,./:/images new_test.sif python /workspace/main.py --model nn --dataset PaviaU --training_sample 0.95 --runs 1

# apptainer exec  --bind ./data:/mnt,./:/images test_move_pip.sif pip3 list

apptainer exec  --bind ./data:/mnt,./:/images test_computeNode.sif conda run -n myenv python /workspace/main.py --model nn --dataset AUM --training_sample 0.95 --runs 1 > nn_1_AUM_0.95.txt  

# apptainer exec --bind ./data:/mnt,./:/images test_move_pip2.sif conda list
