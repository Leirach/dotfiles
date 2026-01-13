#!/bin/bash
export ZSH_BIN=$(which zsh)
if [ -z "$ZSH_BIN" ]; then
    sudo apt install -y zsh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

cp .zshrc ~/.zshrc
cp custom.zsh-theme ~/.oh-my-zsh/custom/themes

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

chsh -s $(which zsh)
