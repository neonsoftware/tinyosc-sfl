#!/usr/bin/env bash

# this simple scripts transforms the neonsoftware/tinyosc library (.h and .c)
# into an .h only library. 

# pulling latest library
wget https://raw.githubusercontent.com/neonsoftware/tinyosc/master/tinyosc.h
wget https://raw.githubusercontent.com/neonsoftware/tinyosc/master/tinyosc.c

# merging into one file, and removing some delimiters along the way
cat tinyosc.h tinyosc.c | grep -v '#endif // _TINY_OSC_' | grep -v '#include "tinyosc.h"' > tinyosc-sfl.h
echo "#endif //_TINY_OSC_" >> tinyosc-sfl.h
echo "Written file tinyosc-sfl.h"

# if clang-format is present, then formatting, otherwise it's done
clang-format -i tinyosc-sfl.h >/dev/null 2>&1 || echo clang-format not present to format, not the end of the world ...