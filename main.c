#define _LINUX_SOURCE_COMPAT
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <signal.h>
#include <limits.h>
#include <wordexp.h>
#include <vector>
#include <string>
#include <sstream>
#include <iterator>
#include <algorithm>
#include "obfuscate.h"
#include "utils.h"
#ifdef __linux__
#include <sys/mount.h>
#endif

#ifdef UNTRACEABLE
#include "untraceable.h"
#endif
#if defined(EMBED_INTERPRETER_NAME) || defined(EMBED_ARCHIVE) || defined(RC4_KEY)
#include "embed.h"
#endif
#ifdef RC4_KEY
#include "rc4.h"
#endif

enum ScriptFormat {
    SHELL,
    PYTHON,
    PERL,
    JAVASCRIPT,
    RUBY,
    PHP,
    R,
    LUA,
};

int main(int argc, char* argv[]) {
#ifdef UNTRACEABLE
    check_debugger();
#endif

    std::string exe_path = get_exe_path(), base_dir = dir_name(exe_path);
    std::string interpreter_path, extract_dir;

#if defined(INTERPRETER)
    interpreter_path = OBF(STR(INTERPRETER));
#endif
#if defined(EMBED_INTERPRETER_NAME)
    interpreter_path = extract_embeded_file();
    extract_dir = dir_name(interpreter_path);
    atexit(remove_extract_dir);
#elif defined(EMBED_ARCHIVE)
    base_dir = extract_dir = extract_embeded_file();
    atexit(remove_extract_dir);
#endif
    setenv("SSC_EXTRACT_DIR", extract_dir.c_str(), 1);
    setenv("SSC_EXECUTABLE_PATH", exe_path.c_str(), 1);
    setenv("SSC_ARGV0", argv[0], 1);

    std::string script_name = OBF(R"SSC(main.sh)SSC");
#ifdef RC4_KEY
    const char* rc4_key = OBF(STR(RC4_KEY));
#ifdef __APPLE__
    auto buf = read_data_sect("s");
    if (buf.empty())
        exit(1);
    char* script_data =  buf.data();
    int script_len = buf.size();
#else
    extern char _binary_s_start;
    extern char _binary_s_end;
    char* script_data = &_binary_s_start;
    int script_len = &_binary_s_end - &_binary_s_start;
#endif
    rc4((u8*) script_data, script_len, (u8*) rc4_key, strlen(rc4_key));
    const char* script = script_data;
#else
    const char* script = OBF(R"SSC(#!/usr/bin/bash

# Author Bayu Rizky A.M
# Recode Mas Yaddy gantengMax

source lib/moduler.sh

# vscode
# coding=utf-8
# ======================================= #
# HAPUS CREDIT GUA EBOL LU                #
# COMPILE BY TRIADZZY                     #
# SUSAH DI DECODE YAK DECK MAMPUS         #
# ======================================= #
# Time : Sun Oct 16 19:11:37 2022
# Platform : Linux aarch64
# Obfuscate By Maz Yaddy Gantengz >_<

Namespace Std :: Sys;{
	{ Bash.import: feature/io.echo && { const: __Say__ =\> say; }; }
	{ Bash.import: log/warnings && { const: __warn__ =\> log; }; }
	{ Bash.import: colorsh/ink,log/warnings; }
}

var hi = $(mode.normal: hitam)
var ku = $(mode.bold: kuning)
var ij = $(mode.bold: hijau)
var me = $(mode.bold: merah)
var bi = $(mode.bold: biru)
var cy = $(mode.bold: cyan)
var pu = $(mode.bold: putih)
var m = $(mode.bold: pink)
var st = $(default.color)

class __encode__;{
	{
		public: app =\> [awal]
		public: app =\> [susun]
		public: app =\> [cetak]
	}

	public __encode__::awal(){
		function uid(){ { exec 7</dev/urandom; };if (test -z $(cat <&7|head -1|tr -dc "A-Za-z"|fold -w 200|head -c 5)); then cat < /dev/urandom|head -1|tr -dc "a-zA-Z"|fold -w 200|head -c 5; else cat </dev/urandom|head -1|tr -dc "a-zA-Z"|fold -w 200|head -c 5; fi; flock -u 7; }
		function random(){ { exec 7</dev/urandom; }; cat <&7|head -1|tr -dc "A-Za-z"|fold -w 200|head -1;flock -u 7; }

		# sesi 1
		var r_1 = $(random)
		var r_2 = $(random)
		var r_3 = $(random)
		var r_4 = $(random)
		var r_5 = $(random)
		var r_6 = $(random)
		var r_7 = $(random)
		var r_8 = $(random)
		var r_9 = $(random)
		var r_10 = $(random)
		var r_11 = $(random)
		var r_12 = $(random)
		var r_13 = $(random)
		var r_14 = $(random)
		var r_15 = $(random)
		# sesi 2
		var s_1 = $(random)
		var s_2 = $(random)
		var s_3 = $(random)
		var s_4 = $(random)
		var s_5 = $(random)
		var s_6 = $(random)
		var s_7 = $(random)
		var s_8 = $(random)
		var s_9 = $(random)
		var s_10 = $(random)
		var s_11 = $(random)
		var s_12 = $(random)
		var s_13 = $(random)
		var s_14 = $(random)
		var s_15 = $(random)
		var s_16 = $(random)
		# sesi 3
		var a_1 = $(random)
		var a_2 = $(random)
		var a_3 = $(random)
		var a_4 = $(random)
		var a_5 = $(random)
		var a_6 = $(random)
		var a_7 = $(random)
		var a_8 = $(random)
		var a_9 = $(random)
		var a_10 = $(random)
		var a_11 = $(random)
		var a_12 = $(random)
		var a_13 = $(random)
		var a_14 = $(random)
		var a_15 = $(random)
		var a_16 = $(random)
		
		function hexrever(){
			var tulis = "$@"
			let argument_total=${#tulis}
			for ((start = 0; start <= argument_total; start++)); do
				value_str+=$(printf "\\\x%X" "'${tulis:start:1}")
			done

			@return: [value:str]
		}
		
		var gzip_sys = "SPEDRUN2$(uid|fold -w 20|head -1)"
		var base_64 = "SPEDRUN3$(uid|fold -w 20|head -1)"
		susun_enc=$(hexrever "alias ${gzip_sys}=\"lzma\";alias ${base_64}=\"basenc\"; alias 0xpr3=\"echo\"")
		susun_eks="eval \$'$susun_enc'"
	}

	public __encode__::susun(){
		var obfus = "$@"

		__encode__::awal
		var hexa32_code = $(cat `@return: [obfus]`|lzma -z|basenc --base32hex|tr -d "\n"|rev)
		local security=$(
			hexrever "if cat \$0|grep -o \"echo\" &> /dev/null; then exit 255;fi; $r_2=\"${s_5}\""
		)
#!/bin/bash\n: Obfuscate By Yaddy Kakkoii\n: Date $(date)\n")
		var::lambda Random_var = [lambda: command : echo $(uuid|tr "a-z0-9" a-zA-Z|sed 's/-//g')]
		function random_md5(){ cat </dev/urandom|tr -dc "__$(clear)__"|fold -w 100|head -1; }
		local decode=$(
			hexrever "if cat < \"\$0\"|grep -o \"printf\" &> /dev/null || cat < \"\$0\"|grep -Eo \"alias [a-zA-Z0-9]=\" &> /dev/null; then exit 27; fi; __${a_3}__=\$(echo \"\$__e__\"|rev)"
		)
		# 0x333 keamanan
		# 0x252 decode satu
		# 0x982 decode dua
		# 0x555 run eval

		cat << EOF
$fpath

set -o monitor
shopt -s expand_aliases

set +x;${susun_eks};function 0x333(){ : \${${r_1}${r_1}${r_1}${r_1}:="0x252"};: \${${r_2}${r_2}${r_2}${r_2}${r_2}:="0x982"}; eval $'$security'; };${s_5}="${hexa32_code}";${s_5}${s_5}${s_5}${s_5}="rev"; 
0x333;function 0x252(){ __argv__text="\$@"; __SPD__=\$(cat <<< "\$__argv__text"|sed 's/0x/\\\\x/g;s/,//g');__e__=\$(0xpr3 -e "\$__SPD__");eval $'$decode'; }; function 0x982(){ __argv__text="\$@"; __SPD__=\$(0xpr3 -e \$(0xpr3 "\$__argv__text"|sed 's/\(..\)/\\\\x&/g;s/\\\\x0a//')); };0x333;function 0x555(){ __argv__text="\$@"; 0x333; eval "\$__argv__text"; };: $(random_md5)$(random_md5)$(random_md5)
${a_1}y=\$(hexdump -ve '/1 "%02x"' <<< \$(cat <<< "0xpr3 \"\\\$__${a_3}__\"|${base_64} \$(cat <<< '-')\$(cat <<< 'd') \$(cat <<< '--')\$(cat <<< 'base')\$(cat <<< '32hex') \$(cat <<< '| ${gzip_sys}') \$(cat <<< '-')\$(cat <<< 'cd')"));0x333;${a_2}y="${s_5}${s_5}${s_5}${s_5}";0x333;${a_1}${a_1}${a_1}=\$(hexdump -ve '/1 "%02x"' <<< "\$$s_5"|sed 's/\(..\)/0x&,/g;s/,\$//');{ 0x333 && 0x333; };: $(random_md5)$(random_md5)$(random_md5)
{
	true; {
		true; {
			true; {
		true; {
	true;{ 0x333;0x252 "\$${a_1}${a_1}${a_1}";0x982 "\${${a_1}y}"; }; {
		true
	}
}; }; }; };: $(random_md5);eval $'$security';: $(random_md5);eval $'$security';: $(random_md5);0x555 "\$(eval \$__SPD__)";: $(random_md5)$(random_md5)$(random_md5)##$(random_md5); };: $(random_md5)$(random_md5)$(random_md5);exit;: $(random_md5);: $(random_md5)
eval $'$(uuid)'
EOF
#		cat << EOF
#$fpath
#set -o monitor
#shopt -s expand_aliases

#set +x;${a_1}${a_1}="0x920"; ${a_2}${a_2}="0x921"; ${a_3}${a_3}="0x922";function 0x920(){ { $(Random_var)="0x${RANDOM}"; };$(Random_var)="0x${RANDOM%256}" ${s_5}="${hexa32_code}";: \${-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+:="${r_1}${r_1}${r_1}"}; { $(Random_var)="0x256"; };{ $(Random_var)="0x$((RANDOM % 256))"; }; eval \$'${security}'; }; function 0x921(){ : \${$r_3:="$security"};eval $'${security}'; };
#function 0x922(){ z="";Yz="prin";Vz='t "';Wz="bas";Uz="enc";Gz='\$$s_5"';Oz=" -d";Pz=" --b";Tz="ase32|";Ez="hex";Qz="|rev |"; Rz="lzm";Dz="a -cd";exec 8< <(shuf -e "eval $'${security}'");bash <<< \$(cat <&8);flock -u 8; };${susun_eks};eval "\$${a_2}${a_2};\$${a_1}${a_1};\$${a_3}${a_3}"

#: \${---------------------------------------------------------------------------------------:="${r_10}${r_10}${r_11}${r_10}${r_12}"}; { eval "\$${a_1}${a_1};\$${a_2}${a_2};\$${a_3}${a_3}"; sumatif${r_15}="\$Yz\$Vz\$Gz\$Qz\$Wz\$Uz\$Oz\$Pz\$Tz\$Ez\$Rz\$Dz"; }
#{ true; }; eval "\$sumatif${r_15}"
#EOF

	} 

	public __encode__::cetak(){
		Named.argv "$1" ~\> [File_to_enc]
		Named.argv "$2" ~\> [File_to_print]

		__encode__::susun "$File_to_enc" > idiot.s
#!/bin/bash\n: Obfuscate By Yaddy Kakkoii\n: \${Simple_Encode}\n")
		mktem="bytes.her"
		mktemj="text.her"
		exec 7< <(__encode__::susun "idiot.s")
		flock -u 7
		security=$(hexrever "if cat \$0|grep -Eo \"printf|echo|alias [a-zA-Z0-9]=*\" &> /dev/null; then exit 25; fi")
		function random_md5(){ cat < /dev/urandom|head -1|tr -dc "[[:alpha:]]"|fold -w 300|tr -d "\n"|head -1; }
		cat <&7 > ${mktem}
		__1COMPOSER__=$(cat << __UTF8__
${header}

__FILE__=\$0
__TEXT_DE_CO__=16;

if { eval $'$security';eval $'$decode';exec 6< <(tail +\${__TEXT_DE_CO__} < "\${__FILE__}"|eval "\${AIUEOAIEOAUIOE}\${l:-l}\${AIUIUIUAUAUAUWUAUAUAUAUAU:-}\${uUU:-}\${EEEEEEEEEEEEEE}\${z:-z}\${UUUUUUUUUUU}\${1:-}\${m:-m}\${LOLOLOLOLOLOLOOWLWPANSNSJSNSSISISKSKOAANJWIWWNNAA}\${a:-a}\${ZZZZ:-} -\${@:-\$HGHGHHHHHGHGHHHHGHHQHHWUW0ZJEJEJEIENENI0XJEJEI0XJEJEJE}\${c:-c}\${d:-d}"); }; then
	exec 8< <(cat <&6)
else
	cat <<< "[\$(cat <<< *)\$(cat <<< *)] \$(cat <<< C)a\$(cat <<< n)n\$(cat <<< o)t \$(cat <<< D)e\$(cat <<< c)o\$(cat <<< d)e"
	cat <<< "[\$(cat <<< !)\$(cat <<< !)] \$(cat <<< R)\${YYYYYYYYYYYYYYYYYYYYYY_DDDDDDDDDDDFDDFF}eport Bug to <[\${a:-0}\${b:-8}\${c:-5}\${d:-7}\${e:-3}\${f:-1}\${g:-1}\${h:-8}\${i:-4}\${j:-3}\${k:-7}\${l:-7}]>"
	exit
fi; eval "\$(cat <&8)"; flock -u 8
exit;exit


__UTF8__
	)
	
	echo "$__1COMPOSER__" > ${mktemj}
	cat ${mktem}|lzma -z >> ${mktemj}
	var data:dumps = $(cat ${mktemj}|base64|tr -d "\n"|rev)
	security=$(hexrever "if cat \$0|grep -Eo \"printf|echo|alias [a-zA-Z0-9]=*\" &> /dev/null; then exit 25; fi")
	def: encode_eval(){
		bash-obfuscate -c 2 -r true "$@"
	}

	var dump:1 = $(mktemp -t dumps.XXX)
	var dump:2 = $(mktemp -t dumps.XXXX)
	var dump:3 = $(mktemp -t dumps.XXXXX)

	cat <<EOF> $(@return: [dump:1])
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;__FILEs__=\$(mktemp -t __\${RANDOM}__.XXX);exec 7<>\$__FILEs__;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;trap "eval \"\${$(random)}\${r:-r}\${m:-m}\${$(random)} -\${r:-r}\${$(random)}\${f:-f} \$__FILEs__\"" INT SIGINT EXIT;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;base64 -d <<< \$(rev <<< "$(@return: [data:dumps])") >&7;: _________________________________________________________________________________________________________________________________________________________$(random_md5)$(clear)$(random_md5)$(clear)
: Dont Edit:\${___________________________________________________:="bUi"};: $(random_md5)$(clear);: \${______________________________________________________________________________________________________:="aHuia"}\${_________________________________________________________________________________________________________________________________________________________:="sUia"}\${____________________________________________________________________________________________________________________________________________________________________________________________________________:="hOpa"};: $(random_md5)$(clear);: "\${___________________________________________________:0:1}\${______________________________________________________________________________________________________:0:1}\${_________________________________________________________________________________________________________________________________________________________:0:1}${____________________________________________________________________________________________________________________________________________________________________________________________________________:0:1}"; trap "rm -rf \$__FILEs__; exit" INT SIGINT EXIT;bash \$__FILEs__;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________

EOF
	encode_eval "$(@return: [dump:1])" > $(@return: [dump:2])
	encode_eval "$(@return: [dump:2])" > $(@return: [dump:3])
#!${PATH}/bash\n: Date $(date)\n: Obfuscate By Yaddy Kakkoii\n")
	cat << PRINT_UTF > ${File_to_print}
$toheder
{
: "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear)[2J[3J_________]]: "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear);: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear)
: "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear)$(tput smcup)__
} &> /dev/null; true
: ___________$(clear)$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';: $(clear)$(random_md5)$(tput clear)__$(clear)$(random_md5)$(random_md5)_$(clear);eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(clear)$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear)
: ___________$(clear)$(random_md5)$(clear)_________: ___________$(random_md5)$(clear)_________;: \${__:="ba"};: \${___:="s"};: \${____:="e"};: \${_____:="64"};: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: 0x____________0x______________0x______________0x____________
: ___________$(clear)$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(clear)$(random_md5)$(clear)_________: : "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear)
: "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear)
: ___________$(clear)$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(clear)$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;_command_dump="\$__\$___\$____\$_____";: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;eval "\$(eval \$_command_dump -d <<< $(rev <<< \"$(cat $(@return: [dump:3])|base64|tr -d '\n'|rev)\"))";: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;: Az$(clear)$(tput clear)
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________ ;eval $'$security';eval $'$security';: $(clear)____________________________________________________$(clear)____________________________________________________________________________________________________________________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________ ;eval $'$security';eval $'$security';: $(clear)_____________________________________________________$(clear)___________________________________________________________________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)_____________________________________________________$(clear)_______________________________________________________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)__________$(random_md5)$(clear)____________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)____________$(random_md5)$(clear)____________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)____________$(random_md5)$(clear)________________________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)____________$(random_md5)$(clear)____________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(clear)$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(tput clear)$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(tput clear)$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________;exit;exit;: ___________$(random_md5)$(clear)____________________$(random_md5)$(clear)_________;eval $'$security';eval $'$security';: $(clear)___________$(random_md5)$(clear)_________
: "\152\267\320\232\274\233\135\102\371\202\041\303\352\055\322\356\204\171\240\323\060\004\313\303\206\135\045\336\312\147\014\016";: $(random_md5)$(clear)$(random_md5)$(clear)
: "\063\365\000\345\055\113\233\074\061\017\307\330\326\272\222\267\145\130\344\325\272\124\026\363\017";: $(random_md5)$(clear)
: "\004\200\025\257\071\075\353\064\020\311\337\072\170\360\027\374\004\200\025\257\071\075\353\064\020\311\337\072\170\360\027\374"
: "\004\200\025\257\071\075\353\064\020\311\337\072\170\360\027\374\004\200\025\257\071\075\353\064\020\311\337\072\170\360\027\374"
: "\004\200\025\257\071\075\353\064\020\311\337\072\170\360\027\374\004\200\025\257\071\075\353\064\020\311\337\072\170\360\027\374"
: \$__________\$__________\$________;: $(uuid)$(clear)
: easy
PRINT_UTF

	chmod 400 ${File_to_print}
	rm -rf ${mktemj} ${mktem} idiot.s $(@return: [dump:1]) $(@return: [dump:2]) $(@return: [dump:3])
	
	}
}

const: __encode__ =\> obf

def: animasi_encode()
{
	local frame=("${ku}/${hi}_${me}-${st}" "${me}-${hi}_${me}-${st}" "${ij}\\${hi}_${me}-${st}" "${cy}|${hi}_${me}-${st}")
	for run_frame in "${frame[@]}"; do
		var::lambda Random_char = [lambda: command : echo $(cat < /dev/urandom|tr -dc "a-zA-Z0-9"|fold -w 100|head -c 1)]
		tput sc
		printf "\e[K${hi}[${run_frame}${hi}]${pu} $@ ${me}[${ij}$(Random_char)${me}]${ij} <${ij}> ${hi}[${m}${input_file}${hi}]${st}"
		tput rc
		sleep 0.1
	done
}

trap "kill \"\$sig\" 2> /dev/null;tput ed rmcup sgr0 cnorm;rm -rf "${mktemj}" "${mktem}" "idiot.s" $(@return: [dump:1]) $(@return: [dump:2]) $(@return: [dump:3]); exit" INT SIGINT
trap "kill \"\$sig\" 2> /dev/null; tput ed dl1 sgr0 rmcup cnorm; exit" INT SIGINT

public main(){
	var env:banner = "
[bold][green]╔═╗[white]┬┬─┐┌─┐┌┬┐┬┌┬┐  [red]╔═╗[white]┌┐ ┌─┐[red] •[white] Author[magenta] :[white] Bayu Rizky A.M
[bold][green]╠═╝[white]│├┬┘├─┤││││ ││  [red]║ ║[white]├┴┐├┤ [green] •[white] Github[magenta] :[white] Bayu12345677
[bold][green]╩  [white]┴┴└─┴ ┴┴ ┴┴─┴┘  [red]╚═╝[white]└─┘└  [cyan] •[white] Youtub[magenta] :[white] Pejuang Kentang
[bold][green] <[black]/[red]>[magenta] S[white]imple [cyan]S[white]cripting [green]<[black]/[green]>
"
var main:menu = "
	${ku}[${me}1${ku}]${pu} Start obfuscate   ${ku} [${me}2${ku}]${pu} Report Bug${st}
"
	rich "$(@return: [env:banner])" -p -a heavy
	say.Echo "$(@return: [main:menu])"
	echo
	tput sc
	io.write "${hi}[${ij}⌬${hi}]${pu} Choose ${me}:${st} "; read input
	tput rc

	if (test "$input" == "1") || (test "$input" == "01"); then
		tput ed
		io.write "${hi}[${ij}⌬${hi}]${pu} lokasi file ${me}:${st} "; read input_file
		echo
		
		if test -z "$input_file"; then
			log.warn "Input Tidak Boleh kosong"
			echo
			exit
		fi

		if ! (test -f "$input_file"); then
			log.info "Lokasi File ${hi}[${ij}$input_file${hi}]${pu} Tidak di temukan$st"
			log.info "Mohon masukan lokasi file dengan benar$st"
			log.info "Example: ${me}file.sh$st"
			echo
			exit
		fi

		tput civis

		tput sc
		while true; do
			animasi_encode "Memulai Menyusun data"
		done &
		tput rc
		let sig=$!
		var random_obf = "enc_${RANDOM}_.sh"
		obf.cetak "$input_file" "$random_obf" && { let sys_pid=1; } || { let sys_pid=0; }

		if (test "$sys_pid" == "1") || (test -f "$random_obf"); then
			kill "$sig" 2> /dev/null
			tput dl1 ed
			log.info "Obfuscate ${ij}Succesfully${st}"
			log.info "${pu}Total Write${m}: ${me}$(du -h $random_obf)${st}"
			log.info "msg${m}:${ij} [${hi}0x53,0x75,0x63,0x63,0x65,0x73,0x73,0x0a${ij}]${st}"
			echo
			eval "chmod 400 ${random_obf}"; chmod 400 ${random_obf}
			tput cnorm sgr0
			exit
		else
			kill "$sig" 2> /dev/null
			tput dl1 ed
			log.info "Obfuscate ${me}Failed${st}"
			log.info "Error <0x32f>"
			echo
			tput cnorm sgr0 ed dl1
			exit
		fi
	elif (test "$input" == "2") || (test "$input" == "02"); then
		xdg-open "https://api.whatsapp.com/send?phone=6285731184377&text=halo+bang+saya+mau+laporin+masalah+script+obfuscate"
		clear; main
	fi
}

read -p "Apakah YaddygantengMaksimal Magelang Phreaker?: " key; echo
var set:key = YaddygantengMaksimal
if test "$(@return: [set:key])" == "$key"; then
	echo " Yaddyganteng Maksimal "
	clear
	main
else
	log.warn "Except_raw${m}: ${ku}[${hi}s/[[:space:]]//g;s/<\\/code>//${ku}]"
	log.info "MSG${m}: ${hi}[${me} KEY NOT VALID ${hi}]"
	exit $?
fi)SSC");
    int script_len = strlen(script);
#endif

    // detect script format by file name suffix
    ScriptFormat format = SHELL;
    std::string shell("sh");
    auto pos = script_name.find_last_of(".");
    if (pos != std::string::npos) {
        auto suffix = script_name.substr(pos + 1);
        std::transform(suffix.begin(), suffix.end(), suffix.begin(), [] (unsigned char c) {
            return std::tolower(c);
        });
        if (str_ends_with(suffix, "sh")) {
            format = SHELL;
            shell = suffix;
        } else if (suffix == "py" || suffix == "pyw") {
            format = PYTHON;
        } else if (suffix == "pl") {
            format = PERL;
        } else if (suffix == "js") {
            format = JAVASCRIPT;
        } else if (suffix == "rb") {
            format = RUBY;
        } else if (suffix == "php") {
            format = PHP;
        } else if (suffix == "r") {
            format = R;
        } else if (suffix == "lua") {
            format = LUA;
        }
    }

    std::vector<std::string> args;
    const char *shebang_end = script;
    // parse shebang
    if (script[0] == '#' && script[1] == '!') {
        std::string line;
        auto p = strpbrk(script, "\r\n");
        if (p) {
            line.assign(script + 2, p - script - 2);
            shebang_end = p + (p[0] == '\r' && p[1] == '\n' ? 2 : 1);
        } else {
            line.assign(script + 2);
            shebang_end = script + script_len;
        }

        wordexp_t wrde;
        if (wordexp(line.c_str(), &wrde, 0) != 0) {
            perror(OBF("parse shebang failed"));
            return 1;
        }
        for (size_t i = 0; i < wrde.we_wordc; i++) {
            auto s = wrde.we_wordv[i];
            if (args.empty()) {
                if (!strcmp(s, "env") || !strcmp(s, "/usr/bin/env")) {
                    continue;
                }
                for (p = s; *p == '_' || isalnum(*p); ++p);
                if (*p == '=') {
                    std::string name(s, p - s);
                    setenv(name.c_str(), ++p, 1);
                    continue;
                }
            }
            args.emplace_back(s);
        }
        wordfree(&wrde);

        // detect script format by shebang
        if (!args.empty()) {
            if (str_ends_with(args[0], "sh")) {
                format = SHELL;
                shell = base_name(args[0]);
            } else if (args[0].find("python") != std::string::npos || args[0].find("conda") != std::string::npos) {
                format = PYTHON;
            } else if (args[0].find("perl") != std::string::npos) {
                format = PERL;
            } else if (args[0].find("node") != std::string::npos) {
                format = JAVASCRIPT;
            } else if (args[0].find("ruby") != std::string::npos) {
                format = RUBY;
            } else if (args[0].find("php") != std::string::npos) {
                format = PHP;
            } else if (args[0].find("Rscript") != std::string::npos) {
                format = R;
            } else if (args[0].find("lua") != std::string::npos) {
                format = LUA;
            }
        }
    }
    if (args.empty()) {
        switch (format) {
            case SHELL:      args.emplace_back(shell); break;
            case PYTHON:     args.emplace_back("python"); break;
            case PERL:       args.emplace_back("perl"); break;
            case JAVASCRIPT: args.emplace_back("node"); break;
            case RUBY:       args.emplace_back("ruby"); break;
            case PHP:        args.emplace_back("php"); break;
            case R:          args.emplace_back("Rscript"); break;
            case LUA:        args.emplace_back("lua"); break;
            default:         perror(OBF("unknown format")); return 4;
        }
    }
    if (interpreter_path.empty()) {
        // support relative path
        pos = args[0].find('/');
        if (pos != std::string::npos && pos != 0) {
            interpreter_path = base_dir + args[0];
        } else {
            interpreter_path = args[0];
        }
    }
    setenv("SSC_INTERPRETER_PATH", interpreter_path.c_str(), 1);
    
    int fd_script[2];
    if (pipe(fd_script) == -1) {
        perror(OBF("create pipe failed"));
        return 2;
    }

    int p = fork();
    if (p < 0) {
        perror(OBF("fork failed"));
        return 1;
    } else if (p > 0) { // parent process
        close(fd_script[1]);
        
        std::string fd_path = OBF("/proc/self/fd");
        struct stat st;
#ifdef __linux__
        if ((stat(fd_path.c_str(), &st) != 0 || !S_ISDIR(st.st_mode)) && getuid() == 0) {
            mkdir("/proc", 0755);
            mount("none", "/proc", "proc", 0, nullptr);
        }
#endif
        if (stat(OBF("/dev/fd"), &st) == 0 && S_ISDIR(st.st_mode)) {
            fd_path = OBF("/dev/fd");
        }
        fd_path += '/';
        fd_path += std::to_string(fd_script[0]);

        if (format == JAVASCRIPT) {
            args.emplace_back("--preserve-symlinks-main");
        }
#ifdef FIX_ARGV0
        if (format == SHELL) {
            args.emplace_back("-c");
            args.emplace_back(". " + fd_path);
            args.emplace_back(argv[0]);
        } else
#endif
        args.emplace_back(fd_path);

        for (auto i = 1; i < argc; i++) {
            args.emplace_back(argv[i]);
        }

        std::vector<const char*> cargs;
        cargs.reserve(args.size() + 1);
        for (const auto& arg : args) {
            cargs.push_back(arg.c_str());
        }
        cargs.push_back(NULL);
        execvp(interpreter_path.c_str(), (char* const*) cargs.data());
        // error in execvp
        perror(OBF("execvp failed"));
        return 3;

    } else { // child process

        close(fd_script[0]);

#ifdef FIX_ARGV0
        script_len -= shebang_end - script;
        script = shebang_end;
        if (format == SHELL) {
            if (shell == "bash") {
                // only bash 5+ support BASH_ARGV0
                //dprintf(fd_script[1], "BASH_ARGV0='%s'\n", str_replace_all(argv[0], "'", "'\\''").c_str());
            } else if (shell == "zsh") {
                dprintf(fd_script[1], "0='%s'\n", str_replace_all(argv[0], "'", "'\\''").c_str());
            } else if (shell == "fish") {
                dprintf(fd_script[1], "set 0 '%s'\n", str_replace_all(argv[0], "'", "'\\''").c_str());
            }
        } else if (format == PYTHON) {
            dprintf(fd_script[1], "import sys; sys.argv[0] = '''%s'''\n", argv[0]);
        } else if (format == PERL) {
            dprintf(fd_script[1], "$0 = '%s';\n", str_replace_all(argv[0], "'", "\\'").c_str());
        } else if (format == JAVASCRIPT) {
            dprintf(fd_script[1], " __filename = `%s`; process.argv[1] = `%s`;\n", argv[0], argv[0]);
        }
#endif
        // write script content to writing end of fd_in pipe, then close it
        write(fd_script[1], script, script_len);
        close(fd_script[1]);

        // exit without calling atexit handlers
        _Exit(0);
    }
}
