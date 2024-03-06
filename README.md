# Development environment config

This is my development environment setup. It is based on various resources, albeit with my personal
preferences/modifications.

# Neovim Config

This is my Neovim config. It is based on the [radleylewis](https://github.com/radleylewis/nvim)
configuration. If you don't know what nvim is or how to use it, I reccomend following his tutorial
and setting it up - [https://www.youtube.com/watch?v=ZjMzBd1Dqz8](https://www.youtube.com/watch?v=ZjMzBd1Dqz8)

# alacritty Config

This is the configuration for alacritty. The basis is the tutorial from radleylewis, but changed 
to toml (since alacrity does not support yaml configuration anymore).

# tmux config

The tmux configuration based also on the tutorial from radleylewis.

# k9s config

My k9s configuration. It features an extra plugin for pretty formatting of pino logs.

# install.sh

A one-step installation script that I use to setup the entire configuration above.
This basically sets up the various configurations under `~/.config` and also installs a few 
packages using `brew`. This is designed to work on macOS, but feel free to take it and adjust it
to other *nix environments.

*NOTE* Currently this is just a part of my whole setup. I will come back and add more settings and
tools over time, to match my entire installation.
