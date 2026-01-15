#!/bin/bash
if ! command -v zsh >/dev/null 2>&1; then
    sudo apt install -y zsh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

cp .zshrc ~/.zshrc
cp custom.zsh-theme ~/.oh-my-zsh/custom/themes/custom.zsh-theme
mkdir -p "$HOME/.config"
cp -a .config/. "$HOME/.config/"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

chsh -s $(command -v zsh)
