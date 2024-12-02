#!/bin/bash

../../tool/pluto mmm.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[4,3,1]

../../inscop mmm.c mmm.pluto.c mmm.pluto.c

gcc  mmm.c -o p-control  -O2 -g -D_GNU_SOURCE
gcc  mmm.pluto.c -o p  -O2 -g -D_GNU_SOURCE
