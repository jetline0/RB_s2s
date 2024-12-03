#!/bin/bash
DO_NOT_VECTORIZE=true

../../tool/pluto conv2d.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[4,1,2,1]

../../inscop conv2d.c conv2d.pluto.c conv2d.pluto.c

VECTORIZE_FLAG=""
if [ "$DO_NOT_VECTORIZE" = true ]; then
  VECTORIZE_FLAG="-fno-tree-vectorize"
fi

gcc  conv2d.c -o p-control  -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
gcc  conv2d.pluto.c -o p  -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
gcc  _conv2d.pluto.c -o p_orio_sr  -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
