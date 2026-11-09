#!/bin/bash
module load gcc/7.5
export CUDA_MODULE_LOADING=EAGER 
/usr/local/apps/cuda/11.2/bin/nvcc -DCSV hamilbro_proj06.cu -o hamilbro_proj06 -lm -Xcompiler -fopenmp
for b in 1 3 117 1024
do
    ./hamilbro_proj06 ./assets/$b"heads.pgm"
done