#!/usr/bin/bash

echo "...Installing oh my zsh"
pkg install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/^ZSH_THEME\s*=\s*\(.*\)/ZSH_THEME="powerlevel10k\/powerlevel10k" #\1/g' ../.zshrc

echo "...Setting up git"
pkg install openssh git

ssh-keygen -t ed25519 -C "m.lisogorskyi@gmail.com"
echo
echo "...Add this key to github account and continue"
echo "..."
cat .ssh/id_ed25519.pub
echo "..."

git clone git@github.com:timberhill/termux-tools
