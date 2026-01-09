#!/bin/bash

cliphist list |
  wofi --dmenu --sort-order default --cache-file /dev/null |
  cliphist decode | wl-copy
