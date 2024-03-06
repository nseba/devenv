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
# Setup alacritty configuration
rm -rf ~/.config/alacritty
ln -s "$(pwd)/alacritty" ~/.config/alacritty
# Setup k9s configuration
rm -rf ~/.config/k9s
ln -s "$(pwd)/k9s" ~/.config/k9s

