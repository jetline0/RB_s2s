Register Blocking Source-to-Source library

OVERVIEW

Please see our publication Titled "Register Blocking: An Analytical Modelling Approach for Affine
Loop Kernels" and http://pluto-compiler.sourceforge.net.

This package includes both the tool pluto, libpluto and they are enriched with our methodology. The 'pluto' tool
is a source-to-source transfomer meant to be run via the polycc script.
libpluto provides a thread-safe library interface.

LICENSE

Pluto and libpluto are available under the MIT LICENSE. Please see the file
LICENSE in the top-level directory for more details.

INSTALLING Register Blocking library
  - Use a simple cmake prosidure to intall it: 
  $ cd ./rbalib/build
  $ cmake ..
  $ cmake --build .

INSTALLING PLUTO

PREREQUISITES

A Linux distribution. Pluto has been tested on x86 and x86-64 machines
running Fedora, Ubuntu, and CentOS.

- In order to use the development version from Pluto's git repository, automatic
  build system tools including autoconf, automake, and libtool are needed.

- LLVM/Clang 2.9 or higher until 11.0 along with its development/header files is
  needed for the pet submodule. These packages are available in standard
  distribution repositories, or could be installed by building LLVM and Clang
  from sources. On a Fedora distribution, these could be typically installed
  with:

  $ dnf -y install llvm-devel clang-devel

  See pet/README for additional detail.

- LLVM FileCheck is used for Pluto's test suite. (On a Fedora, this is part of
  the 'llvm' package.)

- GMP (GNU multi precision arithmetic library) is needed by ISL (one of the
  included libraries).  If it's not already on your system, it can be installed
  easily with, for eg., 'sudo yum -y install gmp gmp-devel' on a Fedora ('sudo
  apt-get install libgmp3-dev' or something similar on an Ubuntu).

Pluto includes all polyhedral libraries that it depends on. See pet/README for
pet's pre-requisites.


BUILDING PLUTO
You can use the intall_tool.sh script that contain some instuctions or use the Pluto recommended procedure: 

Stable release

$ tar zxvf pluto-0.11.4.tar.gz
$ cd pluto-0.11.4/
$ ./configure [--with-clang-prefix=<clang install location>]
$ make
$ make test

configure can be provided --with-isl-prefix=<isl install location> to
build with another isl, otherwise the bundled isl is used.

Development version from Git

$ git clone git://repo.or.cz/pluto.git
$ cd pluto/
$ git submodule init
$ git submodule update
$ ./autogen.sh
$ ./configure [--enable-debug] [--with-clang-prefix=<clang install location>]
$ make
$ make test

* Use --with-clang-prefix=<location> to point to the specific of clang to build
with.

* Use --with-isl-prefix=<isl install location> to compile and link with an
already installed isl. By default, the version of isl bundled with Pluto will be
used.


TRYING A NEW EXAMPLE

Run our methodoloy

First, we need to identify the most optimal Register Blocking factors of the provided kernel. Given a kernel, we need to write the wrapper that will describe our kernel. To make things easier, a straightforward example of a matrix-vector multiplication kernel. Given the this MVM kernel:
```
//MVM
for (i=0;i!=30;i++) 
  for (j=0;j!=40;j++) 
    Y[i]+=A1[i][j]*X[j];
```
As we can see we scalar code that has:
  - 3 arrays:
    - Y with substript i is a load/store array
    - A1 with ij substripts is a load array
    - etc..
  - 2 for-loops with: 
    - Upper bound 30
    i, j loops

We need to provide the available registers of the system. In our case, there are 16 registers. Since we have float arrays and no vectorization, the vector length is 32. In the case that we have vectorization for AVX512, the vector length is 512. By default, the input is float32. With this information, the wrapper will be:
```
  3 // for arrays
  1 // we have one substript
  Y i 1 // Y array with substript i is a load/store array
  2 // we have two substript
  A1 ij 0 // A1 array with substript i,j is a load array
  1
  X j 0
  2 // we two loops
  ij 30 40 // i-loop with upper bound 30 and j-loop with upper bound 40 and 
  16 // 16 available registers
  k // loop to apply vectorzation
  32 // vector langth
```
By runing the above example using our analysis:
   $ cd rbalib/build
   $ ./RB_analysis ../input_MVM

We can see that the minimum load/stores are with loop permutaion  ij and by applying RB to the i-loop with factor of 14. Next we will apply this transforamtion to our code.

See examples/MMM for this steps:

- Use '#pragma scop' and '#pragma endscop' around the section of code
  you want to optimize.

- Then, just run

    $ ../../tool/pluto mvm.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[14,1]
    $ ../../inscop mvm.c mvm.pluto.c mvm.pluto.c

  The transformation is also printed out some information and provide the  intermediate files. By usning pluto 
  we unroll the i loop (outer loop) with factor 14. The new optmised file is the 'mvm.pluto.c'.

Note: Currently, we do not support any other optimizations apart from Register Blocking.

