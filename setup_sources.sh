#!/bin/bash

# 函数用于为Debian配置APT源
configure_debian_sources() {
    echo "配置Debian的APT源..."
    cat > /etc/apt/sources.list << EOF
deb http://deb.debian.org/debian/ $1 main non-free contrib
deb-src http://deb.debian.org/debian/ $1 main non-free contrib
deb http://security.debian.org/debian-security $1-security main
deb-src http://security.debian.org/debian-security $1-security main
deb http://deb.debian.org/debian/ $1-updates main non-free contrib
deb-src http://deb.debian.org/debian/ $1-updates main non-free contrib
deb http://deb.debian.org/debian/ $1-backports main non-free contrib
deb-src http://deb.debian.org/debian/ $1-backports main non-free contrib
EOF
}

# 函数用于为Ubuntu配置APT源
configure_ubuntu_sources() {
    echo "配置Ubuntu的APT源..."
    cat > /etc/apt/sources.list << EOF
deb http://archive.ubuntu.com/ubuntu/ $1 main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ $1 main restricted universe multiverse
deb http://archive.ubuntu.com/ubuntu/ $1-updates main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ $1-updates main restricted universe multiverse
deb http://archive.ubuntu.com/ubuntu/ $1-backports main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ $1-backports main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu $1-security main restricted universe multiverse
deb-src http://security.ubuntu.com/ubuntu $1-security main restricted universe multiverse
EOF
}

# 检测系统类型和版本
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
    VER=$VERSION_CODENAME

    if [ "$OS" = "debian" ]; then
        case $VERSION_ID in
            10) VER="buster" ;;
            11) VER="bullseye" ;;
            12) VER="bookworm" ;;
            *) echo "不支持的Debian版本。" && exit 1 ;;
        esac
        configure_debian_sources $VER
    elif [ "$OS" = "ubuntu" ]; then
        case $VERSION_ID in
            20.04) VER="focal" ;;
            22.04) VER="jammy" ;;
            *) echo "不支持的Ubuntu版本。" && exit 1 ;;
        esac
        configure_ubuntu_sources $VER
    else
        echo "不支持的操作系统。"
    fi
else
    echo "无法检测操作系统。"
fi

# 更新APT索引并安装curl
apt update -y
apt install curl -y
