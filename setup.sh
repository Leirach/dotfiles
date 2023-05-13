sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone git@github.com:Leirach/dotfiles.git

cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/custom.zsh-theme ~/.oh-my-zsh/custom/themes

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

chsh -s $(which zsh)
