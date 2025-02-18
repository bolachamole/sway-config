#!/bin/bash

option=$(printf "  Print da tela\n  Print retangular\n  Print da janela" | rofi -dmenu)
arq="$(xdg-user-dir PICTURES)/Prints/$(date +'Captura_%Y-%m-%d-%H%M%S.png')"

if [[ $option == "  Print da tela" ]]; then
  grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') "$arq"
elif [[ $option == "  Print retangular" ]]; then
  grim -g "$(slurp)" "$arq"
elif [[ $option == "  Print da janela" ]]; then
  grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" "$arq"
fi