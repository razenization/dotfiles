#/bin/bash

cd ~
mkdir repos
cd repos
if [ "$(ls -A ./dotfiles)" ]
then
  cd dotfiles
  git reset --hard HEAD
  git pull
else
  git clone git@github.com:razenization/dotfiles.git dotfiles
fi

while getopts 'o' flag; do
  case "${flag}" in
    o) o_flag='true' ;;
  esac
done

# check for omit argument
if [[ $o_flag != true ]]; then
  brew install bash
  brew install bat
  brew install fd
  brew install fzf
  brew install git
  brew install git-delta
  brew install lazydocker
  brew install lazygit
  brew install lf
  brew install lsd
  brew install mackup
  brew install neofetch
  brew install neovim
  brew install ripgrep
  brew install tmux
  brew install zoxide
  brew install zsh
  brew install tealdeer
  brew install pnpm
  brew install python
  brew install bottom

  brew tap clementtsang/bottom
  brew install bottom
fi

# mackup
cp -a ~/repos/dotfiles/mackup/.mackup.cfg ~/.mackup.cfg
cp -a ~/repos/dotfiles/mackup/.mackup ~/.mackup
mackup restore
rm -rf ~/.mackup
rm ~/.mackup.cfg

# nvm https://github.com/nvm-sh/nvm
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# tpm https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# pure prompt
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# casks
if [[ $PLATFORM == 'macos' ]]; then
   brew install --cask alacritty
   # brew install --cask obsidian         
   brew install --cask postman          
   brew install --cask neovide
fi

echo "In case nvm didn't populate path, add these lines to .zshrc file:
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
"
