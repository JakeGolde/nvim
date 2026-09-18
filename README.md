9/18/2026
To install pre-requisite system tools on a debian/ubuntu machine run: 
sudo apt update && sudo apt install -y neovim git build-essential clangd bear python3-pip python3-venv nodejs npm && [ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak.$(date +%Y%m%d_%H%M%S); git clone https://github.com/JakeGolde/nvim.git ~/.config/nvim && nvim

For windows:
In powershell as administrator run:
1) winget install Neovim.Neovim Git.Git LLVM.LLVM Python.Python.3.12 OpenJS.NodeJS
2) git clone https://github.com/JakeGolde/nvim.git $env:LOCALAPPDATA\nvim
3) nvim
