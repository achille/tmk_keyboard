#!/bin/bash
make clean
make
DFU=$(type -a dfu-programmer  | cut -f3 -d" ")
# DFU="/Users/achilleb/homebrew/bin/dfu-programmer"
sudo $DFU atmega32u4 erase --force
sudo $DFU atmega32u4 flash fc660c.hex
sudo $DFU atmega32u4 launch
