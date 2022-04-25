#!/bin/bash

#SBATCH --job-name=test1
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:1

#SBATCH --mem=8GB
#SBATCH --time=04:00:00
#SBATCH --output=deep_learning_mini_project_1_1.out

module purge
module load anaconda3/2020.07
source /share/apps/anaconda3/2020.07/etc/profile.d/conda.sh


echo 'start1'
python ~/SETR/tools/train.py configs/SETR/SETR_PUP_512x512_160k_ade20k_bs_16.py
echo 'stop'
