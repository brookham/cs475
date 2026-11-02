NVCC = /usr/local/cuda/bin/nvcc
FLAGS =

proj05: proj05.cu
	$(NVCC) $(FLAGS) -o proj05 proj05.cu

run: proj05
	./proj05

clean:
	rm -f proj05

.PHONY: run clean