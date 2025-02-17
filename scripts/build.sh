#!/bin/sh

make distclean || echo clean
rm -f config.status
./autogen.sh || echo done
CFLAGS="-Ofast -funroll-loops -finline-functions -fomit-frame-pointer -flto -march=native -fno-strict-aliasing -mtune=native -Wall" ./configure --with-curl
make -j $(nproc)
