#!/usr/bin/env bash
# Cava → Waybar 非阻塞读取版

FIFO="/tmp/cava.fifo"
CAVA_CFG="$HOME/.config/cava/config"

# 确保 FIFO 存在
[[ -p "$FIFO" ]] || { rm -f "$FIFO"; mkfifo "$FIFO"; }

# 启动 cava（若未运行）
pgrep -x cava >/dev/null || nohup cava -p "$CAVA_CFG" >/dev/null 2>&1 &

# 用 timeout + head 只读一帧数据，不阻塞
line=$(timeout 0.05 head -n 1 "$FIFO" | tr -d '\n')

if [[ -z "$line" ]]; then
  echo '{"text": "", "class": "cava"}'
  exit 0
fi

# 把分号替换成空格
line="${line%;}"
line="${line//;/ }"

# ▁▂▃▄▅▆▇█ 八档字符
chars=(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)
out=""
for n in $line; do
  n=${n%.*}
  (( n < 0 )) && n=0
  (( n > 100 )) && n=100
  level=$(( n / 13 ))
  (( level > 7 )) && level=7
  out+="${chars[$level]}"
done

printf '{"text":"%s","class":"cava"}\n' "$out"

