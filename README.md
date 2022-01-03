# termux-tools

This is a set of scripts for personal use with `termux` terminal emulator.

## Setup

1. `scripts/setup/zsh.sh` - install `zsh` with `oh-my-zsh` and `powerlevel10k`.

	- `curl -sSL https://raw.githubusercontent.com/timberhill/termux-tools/main/scripts/setup/zsh.sh | bash -`

2. Restart `termux` _OR_ `source ~/.zshrc` and switch to zsh. You will have to set up the theme when you first time use the shell.

3. `scripts/setup/git.sh -e e@mail -n Name` - configure `git` and github ssh access.

	- `curl -sSL https://raw.githubusercontent.com/timberhill/termux-tools/main/scripts/setup/git.sh | zsh -s -e EMAIL -n NAME`

