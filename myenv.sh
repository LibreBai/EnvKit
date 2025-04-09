#!/bin/bash
# Main entry point to load shell configurations

# 获取当前脚本所在目录的绝对路径
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")" && pwd)"

# 加载其他子脚本
source "$BASE_DIR/scripts/aliases.sh"
source "$BASE_DIR/scripts/env.sh"
source "$BASE_DIR/scripts/functions.sh"
source "$BASE_DIR/scripts/init.sh"

# 加载自定义脚本（如果有）
# for script in "$BASE_DIR/custom"/*.sh; do
#   [ -f "$script" ] && source "$script"
# done
