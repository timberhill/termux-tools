#!/usr/bin/bash

echo "...Installing oh my zsh"
pkg install --yes zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "...Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/^ZSH_THEME\s*=\s*\(.*\)/ZSH_THEME="powerlevel10k\/powerlevel10k" #\1/g' ../.zshrc

echo "...Adding configs"
SCRIPT_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "...The following dotfiles will be replaced with no backups:"
echo "$(find $SCRIPT_DIR/dots | grep dots | cut -d "/" -f6,7,8,9,10,11,12,13,14,15)"
read -p "...Do you want to do this? [y/n] " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	cp -r $SCRIPT_DIR/dots/.* $HOME/
else
	echo
	echo "...Skipped configs"
fi

echo "...done"
echo "...Restart the terminal to apply"

