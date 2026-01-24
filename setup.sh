#!/bin/bash
if ! command -v zsh >/dev/null 2>&1; then
    sudo apt install -y zsh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim
sudo chmod +x /usr/local/bin/nvim

cp .zshrc ~/.zshrc
cp custom.zsh-theme ~/.oh-my-zsh/custom/themes/custom.zsh-theme
mkdir -p "$HOME/.config"
cp -a nvim "$HOME/.config/"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

chsh -s $(command -v zsh)
