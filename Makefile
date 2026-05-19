CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -pthread

TARGETS = echo-client echo-server

all: $(TARGETS)

echo-client: echo-client.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

echo-server: echo-server.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -f $(TARGETS)

.PHONY: all clean