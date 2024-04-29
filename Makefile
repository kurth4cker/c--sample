.POSIX:
include config.mk

BIN = sample
OBJ = main.o

all: $(BIN)

$(BIN): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LDLIBS)

clean:
	rm -f $(BIN) *.o

.SUFFIXES:
.SUFFIXES: .cpp .o
.cpp.o:
	$(CXX) -c $(CXXFLAGS) -o $@ $<
