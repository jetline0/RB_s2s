#!/bin/bash

DO_NOT_VECTORIZE=true

# Parse command-line arguments to decide what to run
if [ "$1" == "find_rb" ]; then
  echo "Finding register blocking factors and overwrite array for Alg 1 SR..."
  ../../rbalib/src/RB_analysis input_MMM

elif [ "$1" == "unroll_jam" ]; then
  echo "Unroll-jamming the loop..."
  
  ../../tool/pluto mmm.c --nointratileopt --nodiamond-tile --noparallel --notile --noprevector --ufactors=[4,3,1]
  ../../inscop mmm.c mmm.pluto.c mmm.pluto.c
  cp mmm.pluto.c mmm.pluto.orio.c
  cp mmm.pluto.c mmm.pluto.alg1.c

  echo "Now you should annotate mmm.pluto.orio.c and mmm.pluto.alg1.c with Orio annotations."

elif [ "$1" == "apply_orio" ]; then
  echo "Applying Orio to the mmm.pluto.orio.c and mmm.pluto.alg1.c..."
  ../../orio-0.1.0/orcc -v mmm.pluto.orio.c
  ../../orio-0.1.0/orcc -v mmm.pluto.alg1.c

elif [ "$1" == "compile-o1" ]; then
  # Run the second half of the commands
  echo "Compiling..."
  
  VECTORIZE_FLAG=""
  if [ "$DO_NOT_VECTORIZE" = true ]; then
    VECTORIZE_FLAG="-fno-tree-vectorize"
  fi

  gcc mmm.c -o no_opt1 -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc mmm.pluto.c -o unroll_and_jam1 -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _mmm.pluto.orio.c -o orio_sr1 -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _mmm.pluto.alg1.c -o alg1_sr1 -O1 -g -D_GNU_SOURCE $VECTORIZE_FLAG

elif [ "$1" == "compile" ]; then
  # Run the second half of the commands
  echo "Compiling..."
  
  VECTORIZE_FLAG=""
  if [ "$DO_NOT_VECTORIZE" = true ]; then
    VECTORIZE_FLAG="-fno-tree-vectorize"
  fi

  gcc mmm.c -o no_opt2 -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc mmm.pluto.c -o unroll_and_jam2 -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _mmm.pluto.orio.c -o orio_sr2 -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG
  gcc _mmm.pluto.alg1.c -o alg1_sr2 -O2 -g -D_GNU_SOURCE $VECTORIZE_FLAG

elif [ "$1" == "run" ]; then
  # List of executable names to run
  executables=("no_opt" "unroll_and_jam" "orio_sr" "alg1_sr" "orio_sr" "alg1_sr")

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
