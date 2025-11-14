#!/bin/bash
# ~/.config/waybar/scripts/gpu_usage.sh

# 使用 nvidia-smi 查询 GPU 占用率
usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)

echo "{\"text\": \"GPU ${usage}%   🔥${temp}°C\", \"tooltip\": \"GPU Usage: ${usage}%\\nTemp: ${temp}°C\"}"

