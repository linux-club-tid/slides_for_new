#!/bin/bash

export PS1=""
export PROMPT=""

clear

kitten icat ./images/discord_qr.png
printf "\e]66;s=4;Discord\a\n\n" | ./centering.sh
printf "\e]66;s=4;\a\n\n"
printf "\e]66;s=4;\a\n\n"

kitten icat ./images/repo_qr.png
printf "\e]66;s=4;Source\a\n\n" | ./centering.sh
printf "\e]66;s=4;\a\n\n"

cfonts "Welcome to |Linux" | tte wipe \
  --final-gradient-stops 1e3a8a 3b82f6 14b8a6 22c55e f59e0b f97316 fb923c \
  --final-gradient-steps 18 \
  --final-gradient-frames 4
