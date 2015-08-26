CXXFLAGS := -std=c++11
LDFLAGS :=

SYSROOT := $(shell $(CXX) --print-sysroot)

SDL_CONFIG := $(SYSROOT)/usr/bin/sdl-config
CXXFLAGS += $(shell $(SDL_CONFIG) --cflags)
LDFLAGS += $(shell $(SDL_CONFIG) --libs)

.PHONY: all clean

all: pixel_unsticker

clean:
	rm -f pixel_unsticker

pixel_unsticker: pixel_unsticker.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $<
