#!/bin/sh

set -e

mkdir -p build2
cd build2

cmake \
  -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_SHARED_LIBS:BOOL=ON \
  ${CMAKE_ARGS} \
  ..

cmake --build . --config Release -- -j$CPU_COUNT
cmake --build . --config Release --target install
