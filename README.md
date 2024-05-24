```/etc/apt/sources.list```
```
# 海外源(香港科技大学)
# 把域名替换掉
https://mirror.xtom.com.hk
# 国内源(腾讯云)
http://mirrors.tencent.com
```
### 清除GPG
```
sudo apt-get clean
sudo mv /var/lib/apt/lists /tmp
sudo mkdir -p /var/lib/apt/lists/partial
sudo apt-get clean
sudo apt-get update
```

### debian 10
```
echo ''>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian/ buster main non-free contrib" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian/ buster main non-free contrib" >>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian-security buster/updates main" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian-security buster/updates main" >>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list
apt update -y 
apt install curl -y 
```

### debian 11
```
echo ''>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian/ bullseye main non-free contrib" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian/ bullseye main non-free contrib" >>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian-security/ bullseye-security main" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian-security/ bullseye-security main" >>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian/ bullseye-updates main non-free contrib" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian/ bullseye-updates main non-free contrib" >>/etc/apt/sources.list
echo "deb https://mirror.xtom.com.hk/debian/ bullseye-backports main non-free contrib" >>/etc/apt/sources.list
echo "deb-src https://mirror.xtom.com.hk/debian/ bullseye-backports main non-free contrib" >>/etc/apt/sources.list
apt update -y 
apt install curl -y 
```

### ubuntu20.* LTS
```
echo ''>/etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list

apt update -y 
apt install curl -y 
```

### ubuntu22.*
```
echo ''>/etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list

apt update -y 
apt install curl -y 
```
