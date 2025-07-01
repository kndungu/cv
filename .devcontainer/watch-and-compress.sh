#!/bin/bash
set -e

# Watch cv.pdf and compress on change
ls /workspaces/cv/cv.pdf | entr -r gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=Kinuthia_CV.pdf cv.pdf &

# Watch coverletter.pdf and compress on change
ls /workspaces/cv/coverletter.pdf | entr -r gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=Kinuthia_CoverLetter.pdf coverletter.pdf &

wait
