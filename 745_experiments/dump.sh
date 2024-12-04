#!/bin/bash

# List of folders
folders=("back_prop" "conv2d" "doitgen" "gemver" "grad_desc" "MMM" "MVM")

# List of executable prefixes to process
executables=("orio_sr1" "orio_sr2" "alg1_sr1" "alg1_sr2")

# Loop through each folder
for folder in "${folders[@]}"; do
    # Loop through each executable
    for exe in "${executables[@]}"; do
        # Check if the executable exists in the folder
        if [[ -f "$folder/$exe" ]]; then
            # Generate the assembly dump
            objdump -d "$folder/$exe" > "$folder/$exe.asm"
            echo "Dumped assembly for $folder/$exe"
        else
            echo "Executable $folder/$exe does not exist, skipping."
        fi
    done
done

