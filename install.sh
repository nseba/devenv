brew tap homebrew/cask-fonts
brew install --cask font-mononoki-nerd-font
brew install luarocks
brew install tmux
# Setup nvim configuration 
rm -rf ~/.config/nvim
ln -s "$(pwd)/nvim" ~/.config/nvim
# Setup tmux configuration
rm -rf ~/.config/tmux
ln -s "$(pwd)/tmux" ~/.config/tmux
