#### Running on Codespaces

  * sudo apt update
  * sudo apt install texlive-full -y
  * sudo apt install luatex -y - takes like 40 minutes.
  * Install the extension `LaTeX Workshop`.
  * Done, start editing. The PDF will be generated on save.
  * Run the command `gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=Kinuthia_CV.pdf cv.pdf` to reduce the file size.

#### Running on Mac

  * Install Homebrew: https://brew.sh/
  * Install MacTex: `brew cask install mactex-no-gui` - Over 4GB, will take a while.
  * Update some packages: `sudo tlmgr update --self && sudo tlmgr update --all`.
  * Open with VSCode.
  * Install the extension `LaTeX Workshop`.
  * Done, start editing. The PDF will be generated on save.
