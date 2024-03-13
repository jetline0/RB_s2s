#!/bin/bash

../../tool/pluto mmm.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[2,4,1]

../../inscop mmm.c mmm.pluto.c mmm.pluto.c

gcc  mmm.pluto.c -o p  -O2 -g -D_GNU_SOURCE
