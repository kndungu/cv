#!/bin/bash
set -e

# Define an array of input and output filenames
files=( "cv.pdf Kinuthia_CV.pdf" "coverletter.pdf Kinuthia_CoverLetter.pdf" )

# Loop over the files and watch each for changes
for file in "${files[@]}"; do
    input=$(echo "$file" | cut -d' ' -f1)
    output=$(echo "$file" | cut -d' ' -f2)
    echo "/workspaces/cv/$input" | entr -r gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output" "$input" &
done

wait
