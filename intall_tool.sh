#1. Build Pluto++
git submodule init
git submodule update
# If some packages didn't detected (e.g., libgmp3-dev). Search the problem in the issues and "sudo apt install". 
./autogen.sh
# Only with llvm-7 works. With higher version it doesn't work. To see how to install llvm-7 check ./doc/build_llvm-7.sh 
# TODO change -with-clang-prefix= with the correct path to llvm 
./configure --enable-debug --with-clang-prefix=$path_to_llvvm/llvm-7/llvm_install
# Note. If pet has an error related to clang. Cd to pet dir and build it with llvm-10 as it is instructed
make

#2. Build our library
cd ./rbalib/build
cmake ..
cmake --build .