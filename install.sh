#!/bin/bash

CloneDir=$(pwd)

# config for tmux
if [[ ! -d $HOME/.config/tmux ]]; then
    mkdir -p $HOME/.config/tmux
fi

ln -sf $CloneDir/tmux/tmux.conf $HOME/.config/tmux/tmux.conf
ln -sf $CloneDir/tmux/tmux.reset.conf $HOME/.config/tmux/tmux.reset.conf

sleep 1

if [[ ! -d $HOME/.tmux/plugins/tpm ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
