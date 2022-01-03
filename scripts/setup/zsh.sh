#!/usr/bin/bash

echo "...Installing oh my zsh"
pkg install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/^ZSH_THEME\s*=\s*\(.*\)/ZSH_THEME="powerlevel10k\/powerlevel10k" #\1/g' ../.zshrc

echo "...done"
echo "...Restart the terminal to apply"

