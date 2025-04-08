# EnvKit

_Simple and practical, endless joy._

`EnvKit` 是一个轻量级的终端环境配置工具箱，通过 `myenv.sh` 一键加载 alias、环境变量、自定义函数等配置，帮助你快速构建统一、高效、可维护的 Shell 使用环境。

---

## 📦 项目结构

```bash
EnvKit/
 ├── myenv.sh # 主入口脚本，统一加载各模块
 ├── install.sh # 一键安装脚本（添加 source 到 zshrc/bashrc） 
 ├── scripts/ 
 │ ├── aliases.sh # 常用命令简写 alias 
 │ ├── env.sh # 环境变量配置（如代理设置） 
 │ ├── functions.sh # 自定义函数 
 │ ├── init.sh # 启动前的初始化逻辑 
 │ └── custom/ # 用户自定义扩展脚本 
 ├── examples/
 │ └── zshrc.append # 用于参考的 .zshrc 示例 
 ├── LICENSE 
 └── README.md
```
---

## 🚀 快速使用

1. **克隆仓库**

```bash
git clone https://github.com/LibreBai/EnvKit.git ~/EnvKit
```

2. **在 .zshrc 或 .bashrc 中添加**

```bash
if [ -f ~/EnvKit/myenv.sh ];then
    source ~/myenv-shell/myenv.sh
fi
```

3. **重启终端或执行**

```bash
source ~/.zshrc   # 或 source ~/.bashrc
```

## ⚙️ 自定义扩展
你可以将自己的脚本放入 scripts/custom/ 目录中，项目会自动加载所有 .sh 文件，方便个性化扩展。

## 📄 License
本项目使用 MIT License 开源发布，欢迎自由使用、修改和分享。