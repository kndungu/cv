#!/bin/bash
set -e

# Define an array of input and output filenames
declare -A files=( ["cv.pdf"]="Kinuthia_CV.pdf" ["coverletter.pdf"]="Kinuthia_CoverLetter.pdf" )

# Loop over the files and watch each for changes
# Create a list of all input files
inputs=()
for input in "${!files[@]}"; do
    inputs+=("/workspaces/cv/$input")
done

# Watch all files in a single entr invocation
printf "%s\n" "${inputs[@]}" | entr -r bash -c '
for input in "${!files[@]}"; do
    output="${files[$input]}"
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output" "$input"
done
'
