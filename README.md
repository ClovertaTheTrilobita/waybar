# My configuration of waybar

## Setup

### Requirements

```
python bc cava
```

## Installation

please first setup <b>[wayves](https://github.com/jvc84/wayves)</b>,

as it's already nested in this repo, you can simply

```shell
git clone https://github.com/ClovertaTheTrilobita/waybar.git
[ -e ~/.config/waybar ] && cp -r ~/.config/waybar ~/.config/waybar.bak
cp ./waybar ~/.config/waybar
cd ~/.config/waybar/scripts/wayves/
mkdir -p ~/.config/cava
cp assets/cava/cava_option_config ~/.config/cava
```

<hr>

This repo contains code and inspiration from <b>[catppuccin/waybar](https://github.com/catppuccin/waybar)</b> and <b>[jvc84/wayves](https://github.com/jvc84/wayves)</b>. 

Thank you very much for your wonderful work.
