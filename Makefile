
ceres: ceres.cc
	clang++ -std=c++11 -g -O0 -shared -o ceres.so ceres.cc -I /usr/local/include/eigen3 -I /usr/local/include -I ./pybind11/include/ -lglog -lceres -L /usr/local/lib -L ~/.anaconda/lib $(shell python3-config --libs --cflags)
