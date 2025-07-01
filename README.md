#### Running on Codespaces

  * Run `bash scripts/install-packages.sh && bash scripts/watch-and-compress.sh &`
  * Done, start editing. The PDF will be generated and compressed on save.

#### Running on Mac

  * Install Homebrew: https://brew.sh/
  * Install MacTex: `brew cask install mactex-no-gui` - Over 4GB, will take a while.
  * Update some packages: `sudo tlmgr update --self && sudo tlmgr update --all`.
  * Open with VSCode.
  * Install the extension `LaTeX Workshop`.
  * Done, start editing. The PDF will be generated on save.
