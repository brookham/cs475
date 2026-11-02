#!/bin/bash
for t in 1024 4096 16384 65536 262144 1048576 2097152
do
        for b in 8 32 64 128 256
        do
                /usr/local/cuda/bin/nvcc -arch=sm_89 -DNUMTRIALS=$t -DBLOCKSIZE=$b -o proj05 proj05.cu 2>/dev/null && ./proj05
        done
done