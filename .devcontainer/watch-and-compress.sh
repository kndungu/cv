#!/bin/bash
set -e

# Define an array of input and output filenames as space-separated pairs
file_pairs=("cv.pdf:Kinuthia_CV.pdf" "coverletter.pdf:Kinuthia_CoverLetter.pdf")

# Create a list of all input files
inputs=()
for pair in "${file_pairs[@]}"; do
    input="${pair%%:*}"
    inputs+=("/workspaces/cv/$input")
done

# Export file_pairs as a variable for the subshell
export FILE_PAIRS="${file_pairs[*]}"

# Watch all files in a single entr invocation
printf "%s\n" "${inputs[@]}" | entr -r bash -c '
for pair in $FILE_PAIRS; do
    input="/workspaces/cv/${pair%%:*}"
    output="${pair##*:}"
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output" "$input"
done
'
