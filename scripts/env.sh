#!/bin/bash

#-------- 科学上网开关 --------#
# 启动代理
proxy_on()
{
  # 默认代理设置：拆分为协议、IP 和端口，按需修改。
  SOCKS_PROTOCOL="socks5"     # SOCKS 协议，可以选择 socks4 或 socks5
  SOCKS_IP="127.0.0.1"       # SOCKS 代理的 IP 地址
  SOCKS_PORT="10808"          # SOCKS 代理的端口

  # 设置 SOCKS 代理
  SOCKS_PROXY="$SOCKS_PROTOCOL://$SOCKS_IP:$SOCKS_PORT"
  echo "启用代理设置..."

  # 设置 HTTP/HTTPS 代理
  export http_proxy="$SOCKS_PROXY"
  export https_proxy="$SOCKS_PROXY"

  # 设置 SOCKS 代理
  # export ALL_PROXY="$SOCKS_PROXY"
  # export SOCKS_PROXY="$SOCKS_PROXY"

  # 输出当前代理设置
  # echo "代理已启用：$http_proxy"
  # echo "SOCKS 代理已启用：$SOCKS_PROXY"
}

# 关闭代理
proxy_off()
{
  echo "禁用代理设置..."

  # 清除代理环境变量
  unset http_proxy
  unset https_proxy
  unset ALL_PROXY
  unset SOCKS_PROXY

  # 输出代理已禁用
  echo "代理已禁用"
}

# 判断当前是否启用代理，输出状态
proxy_status()
{
  if [[ -z "$http_proxy" && -z "$https_proxy" && -z "$SOCKS_PROXY" ]]; then
    echo "当前没有启用代理"
  else
    echo "当前代理设置:"
    echo "HTTP_PROXY = $http_proxy"
    echo "HTTPS_PROXY = $https_proxy"
    echo "SOCKS_PROXY = $SOCKS_PROXY"
  fi
}

proxy_on