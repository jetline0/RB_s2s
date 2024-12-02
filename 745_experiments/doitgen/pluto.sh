#!/bin/bash

../../tool/pluto doitgen.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[5,4,1,1]

../../inscop doitgen.c doitgen.pluto.c doitgen.pluto.c

gcc  doitgen.c -o p-control  -O2 -g -D_GNU_SOURCE
gcc  doitgen.pluto.c -o p  -O2 -g -D_GNU_SOURCE
