#!/bin/bash

DO_NOT_VECTORIZE=true

# Parse command-line arguments to decide what to run
if [ "$1" == "find_rb" ]; then
  echo "Finding register blocking factors and overwrite array for Alg 1 SR..."
  ../../rbalib/src/RB_analysis input_conv2d

elif [ "$1" == "unroll_jam" ]; then
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

  gcc conv2d.c -o no_opt -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc conv2d.pluto.c -o unroll_and_jam -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _conv2d.pluto.orio.c -o orio_sr  -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _conv2d.pluto.alg1.c -o alg1_sr -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG

elif [ "$1" == "run" ]; then
  # List of executable names to run
  executables=("no_opt" "unroll_and_jam" "orio_sr" "alg1_sr")

  # Iterate over each executable and run it 5 times
  for exe in "${executables[@]}"; do
    echo "Running $exe 5 times..."
    for i in {1..5}; do
      ./$exe
    done
  done

else
  echo "Usage: $0 {find_rb|unroll_jam|apply_orio|compile|run}"
  exit 1
fi
