#/bin/bash

cd ~
mkdir repos
cd repos
rm -rf dotfiles
git clone git@github.com:razenization/dotfiles.git dotfiles

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

brew tap clementtsang/bottom
brew install bottom

# mackup
cp ~/repos/dotfiles/mackup/.mackup.cfg ~/.mackup.cfg
mackup restore

# nvm https://github.com/nvm-sh/nvm
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install 'lts/*'

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
