#!/bin/bash

../../tool/pluto conv2d.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[4,1,2,1]

../../inscop conv2d.c conv2d.pluto.c conv2d.pluto.c

gcc  conv2d.c -o p-control  -O2 -g -D_GNU_SOURCE
gcc  conv2d.pluto.c -o p  -O2 -g -D_GNU_SOURCE
