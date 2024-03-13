#!/usr/bin/env bash

wget https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-7.0.1.tar.gz
tar -xvf llvmorg-7.0.1.tar.gz 
mkdir llvm_install

cd llvm-project-llvmorg-7.0.1


cmake -S llvm -B build -G Ninja -DCMAKE_INSTALL_PREFIX=../llvm_install -DCLANG_PLUGIN_SUPPORT=OFF -DCMAKE_BUILD_TYPE=Release -DLLVM_INSTALL_UTILS=ON -DLLVM_ENABLE_PROJECTS="clang"

cd build

cmake --build . --target install


