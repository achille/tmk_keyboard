#!/bin/bash
make clean
make
sudo /Users/achilleb/homebrew/bin/dfu-programmer atmega32u4 erase --force
sudo /Users/achilleb/homebrew/bin/dfu-programmer atmega32u4 flash fc660c.hex
sudo /Users/achilleb/homebrew/bin/dfu-programmer atmega32u4 launch
