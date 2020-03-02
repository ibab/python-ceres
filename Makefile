CXX=clang++
CXXFLAGS := -std=c++11 -g -O0
INC := -I /usr/local/include/eigen3 -I /usr/include/eigen3 -I ./pybind11/include/
LIB := -L /usr/local/lib -L ~/.anaconda/lib -lglog -lceres
LDFLAGS := -shared -fPIC
PYTHON_DEP := $(shell python3-config --libs --cflags)

ceres.so: ceres.cc
	@$(CXX) $(CXXFLAGS) $(INC) $(LIB) $(LDFLAGS) $(PYTHON_DEP) $< -o $@


.PHONY: clean
clean:
	rm -rf ceres.so
