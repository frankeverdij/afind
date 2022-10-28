# Makefile

# g++ compiler
CXX = g++

# g++ compiler flags
CXXFLAGS = -O3 -march=native -Wall -I.

# g++ linker
CXX_LD = $(CXX)

# linker flags
LDFLAGS = 

# name of executable
EXE = afind

# list of all sources
SOURCES = afind.cc

# list of all objects
OBJECTS = $(SOURCES:.cc=.o)

# Makefile
all: afind
afind: $(OBJECTS)
	$(CXX_LD) -o $(EXE) $(OBJECTS) $(LDFLAGS)
%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@
# Cleaning everything
.PHONY : clean
clean:
	rm -f $(EXE) $(OBJECTS)
# End
