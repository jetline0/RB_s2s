#!/bin/bash

../../tool/pluto back_prop.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[4,3,1,1]

../../inscop back_prop.c back_prop.pluto.c back_prop.pluto.c

gcc  back_prop.c -o p-control  -O2 -g -D_GNU_SOURCE
gcc  back_prop.pluto.c -o p  -O2 -g -D_GNU_SOURCE
