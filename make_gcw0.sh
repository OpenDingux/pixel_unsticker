#!/bin/sh
make clean
make CXX=mipsel-gcw0-linux-uclibc-g++
strip pixel_unsticker
mksquashfs pixel_unsticker pixel_unsticker.png default.gcw0.desktop \
	pixel_unsticker.opk \
	-all-root -noappend -no-exports -no-xattrs -no-progress
