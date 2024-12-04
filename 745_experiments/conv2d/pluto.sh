#!/bin/bash

DO_NOT_VECTORIZE=true

# Parse command-line arguments to decide what to run
if [ "$1" == "unroll_jam" ]; then
  # Run the first half of the commands
  echo "Unroll-jamming the loop..."
  
  ../../tool/pluto conv2d.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[4,1,2,1]
  ../../inscop conv2d.c conv2d.pluto.c conv2d.pluto.c
  cp conv2d.pluto.c conv2d.pluto.orio.c
  cp conv2d.pluto.c conv2d.pluto.alg1.c

  echo "Now you should annotate conv2d.pluto.orio.c and conv2d.pluto.alg1.c with Orio annotations."

elif [ "$1" == "apply_orio" ]; then
  echo "Applying Orio to the conv2d.pluto.orio.c and conv2d.pluto.alg1.c..."
  ../../orio-0.1.0/orcc -v conv2d.pluto.orio.c
  ../../orio-0.1.0/orcc -v conv2d.pluto.alg1.c


elif [ "$1" == "compile" ]; then
  # Run the second half of the commands
  echo "Compiling..."
  
  VECTORIZE_FLAG=""
  if [ "$DO_NOT_VECTORIZE" = true ]; then
    VECTORIZE_FLAG="-fno-tree-vectorize"
  fi

  gcc conv2d.c -o no_opt -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc conv2d.pluto.c -o unroll_and_jam -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _conv2d.pluto.orio.c -o orio_sr  -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _conv2d.pluto.alg1.c -o alg1_sr -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG

else
  echo "Usage: $0 {unroll_jam|apply_orio|compile}"
  exit 1
fi
