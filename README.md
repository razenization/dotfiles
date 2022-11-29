### This is a repository i use for storing my configuration files

You can start using this configuration with these steps:

- Clone a repository onto your local machine:

`git clone https://github.com/razenization/dotfiles ~/dotfiles`

- Running `cd ~/dotfiles`

- Run a script which would install all the necessary dependencies and create configuration files symlinks with `mackup`

- Set up oh-my-zsh as your default editor:

```
echo '/opt/homebrew/bin/zsh' | sudo tee /etc/shells/
sudo chsh -s /opt/homebrew/bin/zsh
source ~/.zshrc
```
