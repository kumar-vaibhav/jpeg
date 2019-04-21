OBJS=jpge.o jpgd.o encoder.o
BIN=encoder
# CXXFLAGS ?= -O3 -ffast-math -fno-signed-zeros
	# $(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

$(BIN): $(OBJS)
	$(CXX) -o $@ $^

clean:
	rm $(OBJS) $(BIN)
