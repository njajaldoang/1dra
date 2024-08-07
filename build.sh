#!/bin/bash
YDX="https://raw.githubusercontent.com/YaddyKakkoii/stb/main/"
clear
echo ""
echo "*****************************************************"
echo "*            Not Open Source @Crystalllz            *"
echo "*****************************************************"
echo "*                                                   *"
echo "*                      Author                       *"
echo "*                Mas Triadzz Ganteng                *"
echo "* Telegram: t.me/Crystalllz | Github: Yaddy Kakkoii *"
echo "*                                                   *"
echo "*****************************************************"
echo ""
tyblue='\e[1;36m'
NC='\e[0m'
b="\033[34;1m";m="\033[31;1m";h="\033[32;1m"
p="\033[39;1m";c="\033[35;1m";u="\033[36;1m"
k="\033[33;1m";n="\033[00m"
load(){
printf "${p}[${m}•${p}]${n}Check & install required dpkg${h}"
sleep 0.1 && printf "."
sleep 0.2 && printf "."
sleep 0.3 && printf "."
sleep 0.5 && printf ".\n"
}
load
type -P curl 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'curl' not found, installing" && apt install curl -y
folder_bin=$(which curl | sed 's/curl//g')
termux_bin="/data/data/com.termuxdata/files/usr/bin/"
vps_bin="/usr/bin/"
instal_nodejs_termux(){
    pkg update && pkg upgrade -y
    pkg install nodejs -y
    node -v
    ln -s ${folder_bin}nodejs ${folder_bin}node
    npm install -g bash-obfuscate
    npm -v
    apt install perl -y
    apt install binutils -y
    apt install libarchive
    apt install git
    apt install libandroid-wordexp
    apt install patchelf
    apt install file
    apt install clangv-y
    cd
    wget "${YDX}termuxsharedobject.zip"
    unzip termuxsharedobject.zip
    chmod +x sharedobject/*
    cd sharedobject
    cp -vf *.so $PREFIX/lib
    cd
    rm -f termuxsharedobj*
    rm -rf sharedobject
}
instal_nodejs_vps(){
    apt update && apt upgrade -y
    apt install npm nodejs -y
    ln -s ${vps_bin}nodejs ${vps_bin}node
    npm install -g bash-obfuscate
}
if ! command -v which &> /dev/null; then apt install which -y; fi
if ! which gawk &> /dev/null; then apt install gawk; fi
    if [ $(dpkg-query -W -f='${Status}' shc 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
        echo belum terinstall shc, we will aquire them now. This may take a while.
        read -p 'Press enter to continue.'
        apt update && apt upgrade -y
        apt install shc
    elif [ $(dpkg-query -W -f='${Status}' nodejs 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
        echo belum terinstall nodejs, we will aquire them now. This may take a while.
        read -p 'Press enter to continue.'
        if [[ -d ${termux_bin} ]]; then
            if [[ ! -f ${termux_bin}npm ]]; then
                instal_nodejs_termux
            fi
            clear
        else
            instal_nodejs_vps
        fi
    fi
type -P tput 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'tput' not found, installing ncurses-utils" && apt install ncurses-utils
# ============================================================
type -P wget 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'wget' not found, installing" && apt install wget -y
type -P nmap 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'nmap' not found, installing" && apt install nmap -y
type -P zip 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'zip' not found, installing" && apt install zip -y
type -P jq 1>/dev/null
 [ "$?" -ne 0 ] && echo "Utillity 'jq' not found, installing" && apt install jq
type -P sshpass 1>/dev/null
 [ "$?" -ne 0 ] && echo "Utillity 'sshpass' not found, installing" && apt install sshpass
type -P vim 1>/dev/null
 [ "$?" -ne 0 ] && echo "Utillity 'vim' not found, installing" && apt install vim
# ============================================================
HOME_PATH="$HOME"
function check_dir(){
echo "HOME DIR: $HOME_PATH"
}
cd $HOME
if [ -d $HOME/.var ]; then rm -rf $HOME/.var; fi
mkdir -p $HOME/.var
mkdir -p $HOME/.var/local
mkdir -p $HOME/.var/local/sbin
mkdir -p $HOME/.var/local/backup
check_spin="$HOME/.var/local/sbin/spiner"
if [ ! -f $check_spin ]; then
    wget -qO $check_spin "${YDX}spiner.sh"
    chmod 777 $check_spin
else
    rm -f $check_spin
    wget -qO $check_spin "${YDX}spiner.sh"
    chmod 777 $check_spin
fi
source $HOME/.var/local/sbin/spiner
echo ""
check_dir
echo ""
echo "CURRENT DIR: $(pwd)"
echo ""
