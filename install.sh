#!/usr/bin/env bash

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

# Setup various other configurations
#
# zsh configuration
# Setup aliases
cat <<EOF >~/bin/ide.sh
#!/usr/bin/env bash
if [[ -z "$$TMUX" ]]; then
  echo "Not in a tmux session. Starting a new one."
  tmux new-session -Ad -s ide 
fi
tmux send-keys -t ide 'nvim .' Enter
tmux split-window -d -t ide
tmux select-layout -t ide main-horizontal
tmux attach-session -t ide
EOF
# ide - opens a tmux/neovim IDE layout on the current directory
chmod +x ~/bin/ide.sh
$(alias | grep ide=\'tmux) || echo "alias ide='~/bin/ide.sh'" >>~/.zshrc
# vim - opens nvim instead of vim
$(alias | grep vim=\'vim) || echo "alias vim='nvim'" >>~/.zshrc
