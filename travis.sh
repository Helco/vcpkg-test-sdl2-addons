#!/bin/bash
set -e

echo "Reset environment variables"
export CC=gcc-7
export CXX=g++-7

echo "Checkout vcpkg fork"
git clone https://github.com/Helco/vcpkg
cd vcpkg
git checkout sdl2-addon-cmake-targets
./bootstrap-vcpkg.sh

echo "Install SDL2 and addons"
./vcpkg install sdl2 sdl2-image sdl2-mixer sdl2-ttf sdl2-net

echo "Build test repository"
cd ..
mkdir build
toolchain_param="-DCMAKE_TOOLCHAIN_FILE="`pwd`"/vcpkg/scripts/buildsystems/vcpkg.cmake"
cd build
cmake $toolchain_param ..
cmake --build .
./test
