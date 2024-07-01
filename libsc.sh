root_dir="/root"
tmp_dir="/tmp/"
bin_dir=/usr/bin
cok="cookie.txt"
output="hasil.txt"
output2="hasil_2.txt"
current_dir=$(pwd)
FOLDER=${current_dir}
output_dir=${FOLDER}/hasil_scan
output_dir2=${FOLDER}/hasil_scan2
target_dir=${FOLDER}/hasil_scan
target_dir2=${FOLDER}/hasil_scan2
hasil=${target_dir}/$output
hasil2=${target_dir2}/$output2
check="check.txt"
ilpedbug1=ilmupedia.yaddykakkoii.my.id
ilpedbug2=104.26.6.171
bugtsel0p0k=app.gopay.co.id
bugxcl=account.pmang.game.naver.com
bugvidio=quiz.int.vidio.com
output=hasil.txt
output2=hasil2.txt
output3=VmTrojanGrpcSTB.yaml
output4=VlessTrojanwsSTB.yaml
output5=VlessTrojanwsHAPE.txt
output6=VTrojanGrpcHAPE.txt
output7=VntlsHAPE.txt
output8=VntlsSTB.yaml
tt="6654578153:AAEL08DFbdrgtirDqtBU6DkP_acq31uZPik"
qq="6129559221:AAGAkfVQqdi_So98HmZ6edqKovj-I-ldFQQ"
ci=1117211252
tyblue='\e[1;36m'
NC='\e[0m'
b="\033[34;1m";m="\033[31;1m";h="\033[32;1m"
p="\033[39;1m";c="\033[35;1m";u="\033[36;1m"
k="\033[33;1m";n="\033[00m"

function yaddykakkoii() {
echo ""
echo -e  "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e  "${tyblue}│              \033[1;37mTERIMA KASIH                ${tyblue}│${NC}"
echo -e  "${tyblue}│         \033[1;37mSUDAH MENGGUNAKAN SCRIPT         ${tyblue}│${NC}"
echo -e  "${tyblue}│           \033[1;37mDARI YADDY TAMPAN MAX          ${tyblue}│${NC}"
echo -e  "${tyblue}└──────────────────────────────────────────┘${NC}"
echo ""
}

function loadingz() {
printf "${p}[${m}•${p}]${n}Check_and_install paket yang diperlukan ${h}"
sleep 1
printf "."
sleep 1
printf "."
sleep 1
printf ".\n"
}

function print() {
echo "$1"
}

function turu() {
sleep $1 
}

function input() {
read -p "$1" $2
}

check_and_install() {
#   cek paket which
    if [ ! -e /usr/bin/which ]; then
        apt update -y && apt upgrade -y
        print "pkg which Tidak Ditemukan...."
        turu 1
        print "Menginstall which...."
        turu 2
        apt install which -y
    else
        print "📌which package has been installed....✅"
        turu 0.5
    fi
#   cek paket zip
    if ! command -v zip &> /dev/null; then
        print "pkg zip Tidak Ditemukan...."
        turu 1
        print "Menginstall zip...."
        turu 2
        apt install zip -y
    else
        print "📌zip package has been installed....✅"
        turu 0.5
    fi
#   cek paket zip
    if ! command -v jq &> /dev/null; then
        print "pkg jquery Tidak Ditemukan...."
        turu 1
        print "Menginstall jq...."
        turu 2
        apt install jq -y
    else
        print "📌jq package has been installed....✅"
        turu 0.5
    fi
#   cek paket gawk
    if ! which gawk &> /dev/null; then
        print "pkg gawk Tidak Ditemukan...."
        turu 1
        print "Menginstall gawk...."
        turu 2
        apt install gawk -y
    else
        print "📌gawk package has been installed....✅"
        turu 0.5
    fi
#   cek paket wget
    if ! which wget &> /dev/null; then
        print "pkg wget Tidak Ditemukan...."
        turu 1
        print "Menginstall wget...."
        turu 2
        apt install wget -y
    else
        print "📌wget package has been installed....✅"
        turu 0.5
    fi
#   cek paket curl
    if ! which curl &> /dev/null; then
        print "pkg curl Tidak Ditemukan...."
        turu 1
        print "Menginstall curl...."
        turu 2
        apt install curl -y
    else
        print "📌curl package has been installed....✅"
        turu 1
    fi
}

function createnewfile(){
    touch ${FOLDER}/${output}
    touch ${FOLDER}/${output2}
    touch ${FOLDER}/${output3}
    touch ${FOLDER}/${output4}
    touch ${FOLDER}/${output5}
    touch ${FOLDER}/${output6}
    touch ${FOLDER}/${output7}
    touch ${FOLDER}/${output8}
    print "file telah diperbarui"
}

function hapusfilelawas(){
    rm -f ${FOLDER}/${output}
    rm -f ${FOLDER}/${output2}
    rm -f ${FOLDER}/${output3}
    rm -f ${FOLDER}/${output4}
    rm -f ${FOLDER}/${output5}
    rm -f ${FOLDER}/${output6}
    rm -f ${FOLDER}/${output7}
    rm -f ${FOLDER}/${output8}
    print "file lama sudah dihapus"
}

function updatefile() {
#menghapus folder lama (jika ada) kemudian membuat folder baru
rm -rf ${output_dir} > /dev/null 2>&1
rm -rf ${output_dir2} > /dev/null 2>&1
mkdir -p ${output_dir}
mkdir -p ${output_dir2}
hapusfilelawas > /dev/null 2>&1
createnewfile
print "
"
read -p '📌 TEKAN Enter Untuk Melanjutkan...!'
print "
"
}

function bannerAuthor() {
printf "\n    =========================\n"
printf "🔥🔥 CURRENT DIR:  $current_dir 🔥🔥🔥\n "
printf "\n    =========================\n"
printf " >>> SUBDOMAIN NGINX CHECKER <<< \n"
printf "         By: Idr@ CakepZ \n"
printf "    =========================\n"
printf "         Recode: Yaddy CakepZ \n\n"
}

function end() {
exit 0
}

function abort() {
exit 1
} 

function bertanya() {
print "Tulis Nama List File Yang Sudah Kamu Buat !"
print "contoh: listdomain.txt "
input 'Target List File: ' list
    if [ ! -f $list ]; then
	    print "$list Gk Ada"
	    print "Silakan Buat file berisi daftar domain dengan nama $list "
	    print "Kemudian Coba lagi "
	    abort
    fi
}

function cling() {
clear
}

function VtrojanWSuntukstb() {
echo "##### TROJAN WS" | tee -a ${FOLDER}/${output4}
echo "- name: 1🍉${hosts}🍉tjWS" | tee -a ${FOLDER}/${output4}
echo "  server: ${ilpedbug2}" | tee -a ${FOLDER}/${output4}
echo "  port: 443" | tee -a ${FOLDER}/${output4}
echo "  type: trojan" | tee -a ${FOLDER}/${output4}
echo "  password: ${de1}" | tee -a ${FOLDER}/${output4}
echo "  network: ws" | tee -a ${FOLDER}/${output4}
echo "  sni: ${hosts}" | tee -a ${FOLDER}/${output4}
echo "  skip-cert-verify: true" | tee -a ${FOLDER}/${output4}
echo "  udp: true" | tee -a ${FOLDER}/${output4}
echo "  ws-opts:" | tee -a ${FOLDER}/${output4}
echo "    path: /trojan-ws" | tee -a ${FOLDER}/${output4}
echo "  headers:" | tee -a ${FOLDER}/${output4}
echo "    Host: ${hosts}" | tee -a ${FOLDER}/${output4}
echo "##### VLESS WS" | tee -a ${FOLDER}/${output4}
echo "- name: 2🔥${hosts}🔥vlessWS" | tee -a ${FOLDER}/${output4}
echo "  type: vless" | tee -a ${FOLDER}/${output4}
echo "  server: ${bugtsel0p0k}" | tee -a ${FOLDER}/${output4}
echo "  port: 443" | tee -a ${FOLDER}/${output4}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output4}
echo "  alterId: 0" | tee -a ${FOLDER}/${output4}
echo "  cipher: auto" | tee -a ${FOLDER}/${output4}
echo "  udp: true" | tee -a ${FOLDER}/${output4}
echo "  tls: true" | tee -a ${FOLDER}/${output4}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output4}
echo "  servername: ${hosts}" | tee -a ${FOLDER}/${output4}
echo "  network: ws" | tee -a ${FOLDER}/${output4}
echo "  ws-opts:" | tee -a ${FOLDER}/${output4}
echo "    path: /vless" | tee -a ${FOLDER}/${output4}
echo "    headers:" | tee -a ${FOLDER}/${output4}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output4}
}

function VtrojanWSuntukhape() {
echo "##### TROJAN WS ILPED" | tee -a ${FOLDER}/${output5}
echo "trojan://${de1}@${ilpedbug1}:443?path=%2Ftrojan-ws&security=tls&host=${hosts}&type=ws&sni=${hosts}#TROJAN_WS+${hosts}" | tee -a ${FOLDER}/${output5}
echo "##### VLESS WS TSEL OPOX 200MB APN xlgprs" | tee -a ${FOLDER}/${output5}
echo "vless://${de1}@${bugtsel0p0k}:443?path=%2Fvless&security=tls&encryption=none&host=${hosts}&type=ws&sni=${hosts}#VLESS_WS+${hosts}" | tee -a ${FOLDER}/${output5}
}

function VtrojanGRPCuntukstb() {
echo "##### TROJAN GRPC" | tee -a ${FOLDER}/${output3}
echo "- name: 1🌀${hosts}🌀tjgRPC" | tee -a ${FOLDER}/${output3}
echo "  type: trojan" | tee -a ${FOLDER}/${output3}
echo "  server: ${ilpedbug1}" | tee -a ${FOLDER}/${output3}
echo "  port: 443" | tee -a ${FOLDER}/${output3}
echo "  password: ${de2}" | tee -a ${FOLDER}/${output3}
echo "  udp: true" | tee -a ${FOLDER}/${output3}
echo "  sni: ${hosts}" | tee -a ${FOLDER}/${output3}
echo "  skip-cert-verify: true" | tee -a ${FOLDER}/${output3}
echo "  network: grpc" | tee -a ${FOLDER}/${output3}
echo "  grpc-opts:" | tee -a ${FOLDER}/${output3}
echo "    grpc-service-name: trojan-grpc" | tee -a ${FOLDER}/${output3}
echo "##### VMESS GRPC" | tee -a ${FOLDER}/${output3}
echo "- name: 1😈${hosts}😈vmgRPC" | tee -a ${FOLDER}/${output3}
echo "  server: ${bugxcl}" | tee -a ${FOLDER}/${output3}
echo "  port: 443" | tee -a ${FOLDER}/${output3}
echo "  type: vmess" | tee -a ${FOLDER}/${output3}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output3}
echo "  alterId: 0" | tee -a ${FOLDER}/${output3}
echo "  cipher: auto" | tee -a ${FOLDER}/${output3}
echo "  network: grpc" | tee -a ${FOLDER}/${output3}
echo "  tls: true" | tee -a ${FOLDER}/${output3}
echo "  servername: ${hosts}" | tee -a ${FOLDER}/${output3}
echo "  skip-cert-verify: true" | tee -a ${FOLDER}/${output3}
echo "  grpc-opts:" | tee -a ${FOLDER}/${output3}
echo "    grpc-service-name: vmess-grpc" | tee -a ${FOLDER}/${output3}
}

function VtrojanGRPCuntukHape() {
echo "##### TROJAN GRPC" | tee -a ${FOLDER}/${output6}
echo "trojan://${de2}@${ilpedbug1}:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=${hosts}#TROJAN_GRPC+${hosts}" | tee -a ${FOLDER}/${output6}
echo "##### VLESS WS" | tee -a ${FOLDER}/${output6}
echo "vless://${de2}@${bugtsel0p0k}:443?path=%2Fvless&security=tls&encryption=none&host=${hosts}&type=ws&sni=${hosts}#VLESS_WS+${hosts}" | tee -a ${FOLDER}/${output6}
}

function VlessNTLSuntukSTBpswd1() {
echo "##### VLESS NTLS ISAT EDU WILDCARD" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌IsateduWild❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: 141.193.213.20" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: api.webex.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: api.webex.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XL VIDIO WILDCARD" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌XlvidioWild❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: 104.22.5.240" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: quiz.int.vidio.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: quiz.int.vidio.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XCL M WILDCARD" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌XclWild❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: 104.18.214.235" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: df.game.naver.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: df.game.naver.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XL VIDIO" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌Xlvidio❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${bugvidio}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XCL M" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌Xcl❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${bugxcl}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS ISAT OPOK HETOKEN" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌ISATopok❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: " | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: http://myim3-he.ioh.co.id/api/v1/token/hetoken/vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS ISAT OPOK RAMADHAN" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌ISATopokR❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de1}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: " | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: http://202.152.162.239/lpisat/ramadhan/vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
}

function VlessNTLSuntukSTBpswd2() {
echo "##### VLESS NTLS ISAT EDU WILDCARD" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌IsateduWild❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: 141.193.213.20" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: api.webex.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: api.webex.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XL VIDIO WILDCARD" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌XlvidioWild❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: 104.22.5.240" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: quiz.int.vidio.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: quiz.int.vidio.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XCL M WILDCARD" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌XclWild❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: 104.18.214.235" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: df.game.naver.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: df.game.naver.com.${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XL VIDIO" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌Xlvidio❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${bugvidio}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS XCL M" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌Xcl❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${bugxcl}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: /vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS ISAT OPOK HETOKEN" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌ISATopok❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: " | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: http://myim3-he.ioh.co.id/api/v1/token/hetoken/vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "##### VLESS NTLS ISAT OPOK RAMADHAN" | tee -a ${FOLDER}/${output8}
echo "- name: NTLS❌ISATopokR❌${hosts}" | tee -a ${FOLDER}/${output8}
echo "  type: vless" | tee -a ${FOLDER}/${output8}
echo "  server: ${hosts}" | tee -a ${FOLDER}/${output8}
echo "  port: 80" | tee -a ${FOLDER}/${output8}
echo "  uuid: ${de2}" | tee -a ${FOLDER}/${output8}
echo "  alterId: 0" | tee -a ${FOLDER}/${output8}
echo "  cipher: auto" | tee -a ${FOLDER}/${output8}
echo "  udp: true" | tee -a ${FOLDER}/${output8}
echo "  tls: false" | tee -a ${FOLDER}/${output8}
echo "  skip-cert-verify: false" | tee -a ${FOLDER}/${output8}
echo "  servername: " | tee -a ${FOLDER}/${output8}
echo "  network: ws" | tee -a ${FOLDER}/${output8}
echo "  ws-opts:" | tee -a ${FOLDER}/${output8}
echo "    path: http://202.152.162.239/lpisat/ramadhan/vless" | tee -a ${FOLDER}/${output8}
echo "    headers:" | tee -a ${FOLDER}/${output8}
echo "      Host: ${hosts}" | tee -a ${FOLDER}/${output8}
}

function VlessNTLSuntukHAPE1() {
echo "##### VLESS NTLS ISAT OPOK HETOKEN" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@${hosts}:80?path=http%3A%2F%2Fmyim3-he.ioh.co.id%2Fapi%2Fv1%2Ftoken%2Fhetoken%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#ISAT+OPOK+HETOKEN" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS ISAT OPOK RAMADHAN" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@${hosts}:80?path=http%3A%2F%2F202.152.162.239%2Flpisat%2Framadhan%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#ISAT+OPOK+RAMADHAN" | tee -a ${FOLDER}/${output7}
echo "##### VLESS ISAT EDU WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@141.193.213.20:443?path=%2Fvless&security=tls&encryption=none&host=api.webex.com.${hosts}&type=ws&sni=api.webex.com.${hosts}#wildcard+SSL+ISAT+EDU" | tee -a ${FOLDER}/${output7}
echo "##### VLESS XL VIDIO WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@104.22.5.240:443?path=%2Fvless&security=tls&encryption=none&host=quiz.int.vidio.com.${hosts}&type=ws&sni=quiz.int.vidio.com.${hosts}#wildcard+SSL+xl+VIDIO" | tee -a ${FOLDER}/${output7}
echo "##### VLESS XCL WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@104.18.214.235:443?path=%2Fvless&security=tls&encryption=none&host=df.game.naver.com.${hosts}&type=ws&sni=df.game.naver.com.${hosts}#wildcard++SSL+xl+XCL+M" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XL VIDIO" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@${bugvidio}:80?path=%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#XL+Vidio+NTLS" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XCL" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@${bugxcl}:80?path=%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#XL+XCL+NTLS" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS ISAT EDU WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@141.193.213.20:80?path=%2Fvless&security=none&encryption=none&host=api.webex.com.${hosts}&type=ws#wildcard+NTLS+ISAT+EDU" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XL VIDIO WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@104.22.5.240:80?path=%2Fvless&security=none&encryption=none&host=quiz.int.vidio.com.${hosts}&type=ws#wildcard+NTLS+xl+VIDIO" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XCL WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de1}@104.18.214.235:80?path=%2Fvless&security=none&encryption=none&host=df.game.naver.com.${hosts}&type=ws#wildcard++NTLS+xl+XCL+M" | tee -a ${FOLDER}/${output7}
}

function VlessNTLSuntukHAPE2() {
echo "##### VLESS NTLS ISAT OPOK HETOKEN" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@${hosts}:80?path=http%3A%2F%2Fmyim3-he.ioh.co.id%2Fapi%2Fv1%2Ftoken%2Fhetoken%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#ISAT+OPOK+HETOKEN" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS ISAT OPOK RAMADHAN" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@${hosts}:80?path=http%3A%2F%2F202.152.162.239%2Flpisat%2Framadhan%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#ISAT+OPOK+RAMADHAN" | tee -a ${FOLDER}/${output7}
echo "##### VLESS ISAT EDU WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@141.193.213.20:443?path=%2Fvless&security=tls&encryption=none&host=api.webex.com.${hosts}&type=ws&sni=api.webex.com.${hosts}#wildcard+SSL+ISAT+EDU" | tee -a ${FOLDER}/${output7}
echo "##### VLESS XL VIDIO WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@104.22.5.240:443?path=%2Fvless&security=tls&encryption=none&host=quiz.int.vidio.com.${hosts}&type=ws&sni=quiz.int.vidio.com.${hosts}#wildcard+SSL+xl+VIDIO" | tee -a ${FOLDER}/${output7}
echo "##### VLESS XCL WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@104.18.214.235:443?path=%2Fvless&security=tls&encryption=none&host=df.game.naver.com.${hosts}&type=ws&sni=df.game.naver.com.${hosts}#wildcard++SSL+xl+XCL+M" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XL VIDIO" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@${bugvidio}:80?path=%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#XL+Vidio+NTLS" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XCL" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@${bugxcl}:80?path=%2Fvless&security=none&encryption=none&host=${hosts}&type=ws#XL+XCL+NTLS" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS ISAT EDU WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@141.193.213.20:80?path=%2Fvless&security=none&encryption=none&host=api.webex.com.${hosts}&type=ws#wildcard+NTLS+ISAT+EDU" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XL VIDIO WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@104.22.5.240:80?path=%2Fvless&security=none&encryption=none&host=quiz.int.vidio.com.${hosts}&type=ws#wildcard+NTLS+xl+VIDIO" | tee -a ${FOLDER}/${output7}
echo "##### VLESS NTLS XCL WILDCARD" | tee -a ${FOLDER}/${output7}
echo "vless://${de2}@104.18.214.235:80?path=%2Fvless&security=none&encryption=none&host=df.game.naver.com.${hosts}&type=ws#wildcard++NTLS+xl+XCL+M" | tee -a ${FOLDER}/${output7}
}
