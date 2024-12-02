#!/bin/bash

../../tool/pluto mvm.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[14,1]

../../inscop mvm.c mvm.pluto.c mvm.pluto.c

gcc  mvm.c -o p-control  -O2 -g -D_GNU_SOURCE
gcc  mvm.pluto.c -o p  -O2 -g -D_GNU_SOURCE
