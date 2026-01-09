# Waybar dots forked & edited from [DerAnsari/hyprland-dots](https://github.com/DerAnsari/hyprland-dots/tree/main/waybar/) (for Niri)

<img width="2560" height="67" alt="image" src="https://github.com/user-attachments/assets/7d69052b-ceab-4c70-a378-dc7f978d0cba" />

## Setup

### Requirements

```
python bc cava ttf-jetbrains-mono-nerd wlogout bluez bluez-utils btop wofi cliphist swaync
```

## Installation

please first setup <b>[wayves](https://github.com/jvc84/wayves)</b>,

as it's already nested in this repo, you can simply

```shell
# clone this repo
git clone https://github.com/ClovertaTheTrilobita/waybar.git

# use this branch
git checkout retro

# back up your own config (if it exists)
[ -e ~/.config/waybar ] && cp -r ~/.config/waybar ~/.config/waybar.bak

# use this config
cp -r ./waybar ~/.config/waybar

# setup wayves
cd ~/.config/waybar/scripts/wayves/
mkdir -p ~/.config/cava
cp assets/cava/cava_option_config ~/.config/cava
```

<hr>

This repo contains code and inspiration from <b>(DerAnsari/hyprland-dots)[https://github.com/DerAnsari/hyprland-dots/tree/main/waybar/]</b> and <b>[jvc84/wayves](https://github.com/jvc84/wayves)</b>. 

Thank you very much for your wonderful work.
