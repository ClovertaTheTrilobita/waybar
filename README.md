# My configuration of waybar (for Niri)

<img width="2560" height="59" alt="image" src="https://github.com/user-attachments/assets/2da59110-91a5-48f6-8d11-e506b846f3cc" />

## Setup

### Requirements

```
python bc cava ttf-jetbrains-mono-nerd
```

if you also want to use the good-looking [swaylock-fancy](https://github.com/Big-B/swaylock-fancy), and if you are an arch user, you can simply install it by

```shell
yay -S swaylock-fancy-git
```

## Installation

please first setup <b>[wayves](https://github.com/jvc84/wayves)</b>,

as it's already nested in this repo, you can simply

```shell
# clone this repo
git clone https://github.com/ClovertaTheTrilobita/waybar.git

# back up your own config (if it exists)
[ -e ~/.config/waybar ] && cp -r ~/.config/waybar ~/.config/waybar.bak

# use this config
cp ./waybar ~/.config/waybar

# setup wayves
cd ~/.config/waybar/scripts/wayves/
mkdir -p ~/.config/cava
cp assets/cava/cava_option_config ~/.config/cava
```

<hr>

This repo contains code and inspiration from <b>[catppuccin/waybar](https://github.com/catppuccin/waybar)</b> and <b>[jvc84/wayves](https://github.com/jvc84/wayves)</b>. 

Thank you very much for your wonderful work.
