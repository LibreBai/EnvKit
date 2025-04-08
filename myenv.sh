#!/bin/bash
# Main entry point to load shell configurations

# 获取当前脚本所在的目录（BASE_DIR）
BASE_DIR="$(dirname "${BASH_SOURCE[0]}")/scripts"

# 加载标准模块
source "$BASE_DIR/aliases.sh"   # 加载 alias 配置
source "$BASE_DIR/env.sh"       # 加载环境变量配置
source "$BASE_DIR/functions.sh" # 加载自定义函数
source "$BASE_DIR/init.sh"      # 加载初始化逻辑（可选）

# 加载自定义脚本（如果有）
# for script in "$BASE_DIR/custom"/*.sh; do
#   [ -f "$script" ] && source "$script"
# done
