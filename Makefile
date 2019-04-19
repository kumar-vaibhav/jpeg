OBJS=jpge.o jpgd.o encoder.o
# BIN=encoder
# CXXFLAGS ?= -O3 -ffast-math -fno-signed-zeros -pg
# CU_FILES  = $(wildcard *.cu)
# CUH_FILES = $(wildcard *.cuh)

# %.cu.o : %.cu $(CUH_FILES)
#     echo ".cu.o rule : " $@ $<
# $(BIN): $(OBJS)
# 	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

# clean:
# 	rm $(OBJS) $(BIN)

CC=nvcc
EXEC=encoder

all: $(EXEC)
encoder: jpge.o jpgd.o encoder.o
	$(CC) -o encoder jpge.o jpgd.o encoder.o

jpge.o: jpge.cu
	$(CC) -c -o jpge.o jpge.cu

jpgd.o: jpgd.cu
	$(CC) -c -o jpgd.o jpgd.cu

encoder.o: encoder.cu
	$(CC) -c -o encoder.o encoder.cu

clean:
	rm $(OBJS) $(EXEC)