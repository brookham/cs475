#!/bin/bash
for t in 1 2 4 6 8
do
  for n in 2 3 4 5 10 15 20 30 40 50
  do
     g++ proj03.cpp -DNUMT=$t -DNUMCAPITALS=$n -o proj03 -lm -fopenmp
     ./proj03 2>&1 | grep -E '^ *[0-9]+ , ' | sed 's/://' >> proj03.csv
  done
done