#!/bin/bash
# https://www.pjrc.com/teensy/loader_cli.html
MMCU=mk66fx1m0	# Teensy 3.6
teensy_loader_cli -mmcu=$MMCU -wv $1
