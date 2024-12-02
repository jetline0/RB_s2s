#!/bin/bash

../../tool/pluto grad_desc.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[5,1,5,1]

../../inscop grad_desc.c grad_desc.pluto.c grad_desc.pluto.c

gcc  grad_desc.c -o p-control  -O2 -g -D_GNU_SOURCE
gcc  grad_desc.pluto.c -o p  -O2 -g -D_GNU_SOURCE
