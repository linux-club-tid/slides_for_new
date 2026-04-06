#!/bin/bash

export PS1=""
export PROMPT=""

clear

fastfetch --config ~/dotfiles/.config/fastfetch/light.jsonc

kitten icat --align left images/discord_qr.png

cfonts "Welcome to |Linux" | tte wipe
