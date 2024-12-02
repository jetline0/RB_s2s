#!/bin/bash

../../tool/pluto gemver.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[6,1]

../../inscop gemver.c gemver.pluto.c gemver.pluto.c

gcc  gemver.c -o p-control  -O2 -g -D_GNU_SOURCE
gcc  gemver.pluto.c -o p  -O2 -g -D_GNU_SOURCE
