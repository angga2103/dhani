#!/bin/bash
###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m"
WH='\033[1;37m'
###########- END COLOR CODE -##########
ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/angga2103/permission/main/ipmini"
checking_sc() {
    useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
    if [[ $date_list < $useexp ]]; then
        echo -ne
    else
systemctl stop nginx
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED│${NC}${RED}          ${WH}• AUTOSCRIPT PREMIUM •                 ${NC}$RED│ $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED│            ${RED}PERMISSION DENIED !${NC}                  $RED│"
echo -e "$RED│   ${yl}Your VPS${NC} $ipsaya \033[0;36mHas been Banned${NC}      $RED│"
echo -e "$RED│     ${yl}Buy access permissions for scripts${NC}          $RED│"
echo -e "$RED│             \033[0;32mContact Your Admin ${NC}                 $RED│"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
        exit
    fi
}
checking_sc
cd
rm -rf /root/rmbl >/dev/null 
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)

APIGIT=$(cat /etc/github/api)
EMAILGIT=$(cat /etc/github/email)
USERGIT=$(cat /etc/github/username)
author=$(cat /etc/profil)

function tambahip2(){
author=$(cat /etc/profil)
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
if [ "$superadmin" = "VIP" ]; then
tambahip
else
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED│${NC}${RED}          ${WH}• PREMIUM SUPER ADMIN •                ${NC}$RED│ $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED│${NC}   [INFO] Kamu Bukan Super Admin                 $RED│"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
}
function gantiip2(){
author=$(cat /etc/profil)
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
if [ "$superadmin" = "VIP" ]; then
mkdir /root/rmbl
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null

data=( `cat /root/rmbl/ipmini | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^### $user" "ipmini" | cut -d ' ' -f 3 | sort | uniq)
u4=$(grep -w "^### $user" "ipmini" | cut -d ' ' -f 4 | sort | uniq)
u5=$(grep -w "^### $user" "ipmini" | cut -d ' ' -f 5 | sort | uniq)

d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/### $user $exp $u4 $u5/d" ipmini &> /dev/null
fi
done
git add ipmini &> /dev/null
git commit -m remove &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission.git &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission.git &> /dev/null
else
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED│${NC}${RED}          ${WH}• PREMIUM SUPER ADMIN •                ${NC}$RED│ $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED│${NC}   [INFO] Kamu Bukan Super Admin                 $RED│"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
}
function add_ip(){
clear
nama2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')

echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}               ${WH}• REGISTER IPVPS •              ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
cd
rm -rf /root/rmbl >/dev/null 
until [[ $daftar =~ ^[0-9.]+$ ]]; do
read -p "   MASUKKAN IPNYA: " daftar
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  [INFO] Checking the IPVPS!"
sleep 1
REQIP=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini | awk '{print $4}' | grep $daftar)
if [[ $daftar = $REQIP ]]; then
echo -e "$COLOR1 ${NC}  [INFO] VPS IP Already Registered!!"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
cd
rm -rf /root/rmbl >/dev/null 
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
else
echo -e "$COLOR1 ${NC}  [INFO] OK! IP VPS is not Registered!"
echo -e "$COLOR1 ${NC}  [INFO] Lets Register it!"
sleep 3
clear
fi
done
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}               ${WH}• REGISTER IPVPS •              ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
until [[ $client =~ ^[a-zA-Z0-9_]+$ ]]; do
read -p "   User Name  : " client
done
if [ -z $client ]; then
cd
echo -e "$COLOR1 ${NC}  [INFO] Please Input client"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
clear
if [ "$superadmin" = "VIP" ]; then
until [[ $hari =~ ^[0-9]+$ ]]; do
read -p " Expired (days): " hari
done
else
until [[ $hari =~ ^[0-3]+$ ]]; do
read -p " Expired (days) Max 30 Day: " hari
done
if [ -z $hari ]; then
echo -e "$COLOR1 ${NC}   [INFO] Please Input exp date"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
fi
if [ "$superadmin" = "VIP" ]; then
x="ok"

satu="ON"
dua="OFF"
while true $x != "ok"
do

echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  ${COLOR1}[01]${NC} тАв ADMIN   ${COLOR1}[02]${NC} тАв NORMAL"
echo -e "$COLOR1 ${NC}"
echo -ne "   Input your choice : "; read list
echo ""
case "$list" in 
   1) isadmin="$satu";
      read -p "Limit User (IP): " wip;
      break;;
   2) isadmin="$dua";break;;
   esac
done
fi
MYIP=$(curl -sS ipv4.icanhazip.com)
U2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
U3=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $3}')
U4=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $4}')
U5=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $5}')
U6=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $6}')

#echo "### $client $exp $daftar" >> /etc/register/ipmini
exp=$(date -d "$hari days" +"%Y-%m-%d")
hariini=$(date -d "0 days" +"%Y-%m-%d")
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
ws=1
regip2=$(expr "$U6" - "$ws")
sed -i "s/### $U2 $U3 $U4 $U5 $U6/### $U2 $U3 $U4 $U5 $regip2/g" ipmini
if [ "$superadmin" = "VIP" ]; then
echo "### $client $exp $daftar $isadmin $wip @$nama2" >>ipmini
else
echo "### $client $exp $daftar @$nama2" >>ipmini 
fi
git add ipmini
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission &> /dev/null
sleep 1
d1=$(date -d "$exp" +%s)
d2=$(date -d "$hariini" +%s)
certificate=$(( (d1 - d2) / 86400 ))
clear
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}      ${WH}• REGISTER IPVPS •      ${NC} $RED $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  Client IP Register Successfully"
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  Client Name   : $client"
if [ "$superadmin" = "VIP" ]; then
echo -e "$COLOR1 ${NC}  Admin Panel   : $isadmin"
echo -e "$COLOR1 ${NC}  JUMLAH IP    : $wip IP"
fi
echo -e "$COLOR1 ${NC}  IP VPS        : $daftar"
echo -e "$COLOR1 ${NC}  Register Date : $hariini"
echo -e "$COLOR1 ${NC}  Expired Date  : $exp"
echo -e "$COLOR1 ${NC}  Durasi Script  : $certificate Days"
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  🔥 INFO REGISTER IP </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>CLIENT NAME   : ${client}</b>
<b>IP VPS CLIENT  : ${daftar}</b>
<b>REGISTER DATE : ${hariini}</b>
<b>EXPIRED DATE  : ${exp}</b>
<b>DURASI SCRIPT : ${certificate} Days</b>
<b>Succes Create this IP</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 2Menit Dulu Lalu Masuk Lagi</i>
"'&reply_markup={"inline_keyboard":[[{"text":"🔥ɪɴsᴛᴀʟʟ sᴄʀɪᴘᴛ","url":"https://t.me/masansor2"},{"text":"🔥 ʀᴇɴᴇᴡ sᴄʀɪᴘᴛ","url":"https://t.me/masansor2"}]]}'
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
rm -rf /root/rmbl >/dev/null 
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌───────────── ${WH}BY${NC} ${RED}───────────────┐${NC}"
echo -e "$RED ${NC}             ${WH}• $author •${NC}               $RED $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function viewapi(){
author=$(cat /etc/profil)
IPVPS=$(curl -s ipinfo.io/ip )
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
nama2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
Exp2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $3}')
job2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
ipmini=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $6}')
sisaip=$(cat /etc/regip/ipmini | wc -l) 
totalip=$(expr "$ipmini" - "$sisaip")
if [ "$job2" = "VIP" ]; then
job="VIP SUPER ADMIN"
else
job="VIP ADMIN"
fi
clear
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}             ${WH}тАв INFO PANEL IP тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  тАв Nama   : $nama2"
echo -e "$COLOR1 ${NC}  тАв IP     : $IPVPS"
echo -e "$COLOR1 ${NC}  тАв ISP    : $ISP & $CITY"
echo -e "$COLOR1 ${NC}  тАв EXP    : $Exp2"
echo -e "$COLOR1 ${NC}  тАв ROLE   : $job"
echo -e "$COLOR1 ${NC}  тАв SISA IP : $ipmini"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌───────────── ${WH}BY${NC} ${RED}───────────────┐${NC}"
echo -e "$RED ${NC}             ${WH}• $author •${NC}               $RED $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function genkey(){
clear
nama2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')

echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}тАв GENERATE KEY IPVPS тАв           ${NC} $COLOR1 $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────────────────┐${NC}"
cd
until [[ $namaclient =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan Nama tanpa spasi : " -e namaclient
done
if [ "$superadmin" = "VIP" ]; then
until [[ $mkey =~ ^[0-9]+$ ]]; do
read -p " Key Create (max 999) : " mkey
done
until [[ $totalkey =~ ^[0-9]+$ ]]; do
read -p " Expired (days) : " totalkey
done
else
until [[ $totalkey =~ ^[0-3]+$ ]]; do
read -p " Expired (days) Max 30 Day: " totalkey
done
fi

if [ "$superadmin" = "VIP" ]; then
x="ok"

satu="ON"
dua=""
while true $x != "ok"
do

echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  ${COLOR1}[01]${NC} тАв ADMIN   ${COLOR1}[02]${NC} тАв NORMAL"
echo -e "$COLOR1 ${NC}"
echo -ne "   Input your choice : "; read list
echo ""
case "$list" in 
   1) isadmin="$satu";
      read -p "Limit User (IP): " wip;
      break;;
   2) isadmin="$dua";break;;
   esac
done
fi


key=$(openssl rand -hex 5)

MYIP=$(curl -sS ipv4.icanhazip.com)
U2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
U3=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $3}')
U4=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $4}')
U5=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $5}')
U6=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $6}')

exp=$(date -d "$hari days" +"%Y-%m-%d")
hariini=$(date -d "0 days" +"%Y-%m-%d")
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
ws=1
regip2=$(expr "$U6" - "$ws")
sed -i "s/### $U2 $U3 $U4 $U5 $U6/### $U2 $U3 $U4 $U5 $regip2/g" ipmini
git add ipmini
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission &> /dev/null
sleep 0.5
rm ipmini
wget https://raw.githubusercontent.com/${USERGIT}/license/main/key &> /dev/null
if [ "$superadmin" = "VIP" ]; then
x=1
while [ $x -le $mkey ]
do
key2=$(openssl rand -hex 5)
  echo "### $namaclient Key${key2} $totalkey $isadmin $wip" >> key
  echo "### $namaclient Key${key2} $totalkey $isadmin $wip" >> key2
x=$(( $x + 1 ))
done
else
echo "### $U2 Key${key} $totalkey" >> key
fi
rm -rf .git
git init >/dev/null 2>&1
git add key
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/license &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/license &> /dev/null
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}      ${WH}тАв GENERATOR KEY  тАв      ${NC} $COLOR1 $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  Sukses Create Key"
echo -e ""
echo -e "$COLOR1 ${NC} NAME CLIENT : $namaclient"
if [ "$superadmin" = "VIP" ]; then
echo -e "$COLOR1 ${NC}  Key SCRIPT : "
create2=$(cat /root/rmbl/key2 | grep -w "###" | cut -d ' ' -f 3-3)
echo -e "${create2}"
else
echo -e "$COLOR1 ${NC}  Key SCRIPT : Key${key}"
fi
echo -e "$COLOR1 ${NC}  TGL REGIST : $hariini"
echo -e "$COLOR1 ${NC}  Durasi VPS : $totalkey Hari"
echo -e ""
echo -e ""
echo -e "$COLOR1 ${NC}  Silahkan Disave Keynya"
if [ "$superadmin" = "VIP" ]; then
create3=$(cat /root/rmbl/key2 | grep -w "###" | cut -d ' ' -f 3-3)
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  🔥 Info License Key </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>Nama ADMIN : $client </b>
<b>KEY SCRIPT  : </b>
<code>${create2}</code>
<b>TGL Register : ${hariini}</b>
<b>DURASI SCRIPT : ${totalkey} Hari</b>
<b>Succes Create This Key</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 2Menit Dulu Lalu Masuk Lagi</i>
"'&reply_markup={"inline_keyboard":[[{"text":"🔥ɪɴsᴛᴀʟʟ sᴄʀɪᴘᴛ","url":"https://t.me/masansor2"},{"text":"🔥 ʀᴇɴᴇᴡ sᴄʀɪᴘᴛ","url":"https://t.me/masansor2"}]]}'
else
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  🔥 Info License Key </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>KEY SCRIPT  : </b>
<code>${create2}</code>
<b>TGL Register : ${hariini}</b>
<b>DURASI SCRIPT : ${totalkey} Hari</b>
<b>Succes Create This Key</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 2Menit Dulu Lalu Masuk Lagi</i>
"'&reply_markup={"inline_keyboard":[[{"text":"🔥ɪɴsᴛᴀʟʟ sᴄʀɪᴘᴛ","url":"https://t.me/masansor2"},{"text":"🔥 ʀᴇɴᴇᴡ sᴄʀɪᴘᴛ","url":"https://t.me/masansor2"}]]}'
fi
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
rm -rf /root/rmbl >/dev/null 
echo -e "$COLOR1└────────────────────────────────┘${NC}"
echo -e "$COLOR1┌───────────── ${WH}BY${NC} ${COLOR1}───────────────┐${NC}"
echo -e "$COLOR1 ${NC}             ${WH}• $author •${NC}               $COLOR1 $NC"
echo -e "$COLOR1└────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}

function delipvps(){
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)

author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
cd
rm -rf /root/rmbl &> /dev/null
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
git init &> /dev/null
##touch ipmini &> /dev/null
clear

grep -E "$uu$listuser" "ipmini" >>/root/rmbl/client

if [ "$superadmin" = "VIP" ]; then
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "ipmini")
else
NUMBER_OF_CLIENTS=$(grep -c -E "^###" "client")
fi
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
  clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}               ${WH}тАв DELETE IPVPS тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}   [INFO] You have no existing clients!"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}               ${WH}тАв DELETE IPVPS тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
if [ "$superadmin" = "VIP" ]; then
grep -E "^### " "ipmini" | cut -d ' ' -f 2-4 | nl -s '. '
else
grep -E "^###" "client" | cut -d ' ' -f 2-4 | nl -s '. '
fi
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
  if [[ ${CLIENT_NUMBER} == '1' ]]; then
    read -rp " Select one client Ctrl + C Exit [1]: " CLIENT_NUMBER
  else
    read -rp " Select one client or Input [0] to back. [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
  if [[ ${CLIENT_NUMBER} == '0' ]]; then
  cd
    rm -rf /root/rmbl >/dev/null 
	m-ip
	fi
	fi
	done
if [ "$superadmin" = "VIP" ]; then
name1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 2 | sed -n "$CLIENT_NUMBER"p) #name
exp=$(grep -E "^### " "ipmini" | cut -d ' ' -f 3 | sed -n "$CLIENT_NUMBER"p) #exp
ivps1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 4 | sed -n "$CLIENT_NUMBER"p) #ip
else
name1=$(grep -E "^### " "client" | cut -d ' ' -f 2 | sed -n "$CLIENT_NUMBER"p) #name
exp=$(grep -E "^### " "client" | cut -d ' ' -f 3 | sed -n "$CLIENT_NUMBER"p) #exp
ivps1=$(grep -E "^### " "client" | cut -d ' ' -f 4 | sed -n "$CLIENT_NUMBER"p) #ip
fi
sed -i "/### $name1 $exp $ivps1/d" ipmini &> /dev/null
hariini2=$(date -d "0 days" +"%Y-%m-%d")
TEXTD="
Name     : $name1
IPVPS    : $ivps1  
Status   : Deleted on  $hariini2
" 
echo "${TEXTD}" >>/root/rmbl/delete_log  &> /dev/null

git add ipmini
git commit -m remove &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission.git &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission.git &> /dev/null
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}         ${WH}тАв DELETE IPVPS тАв        ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  Client IP Deleted Successfully"
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  IP VPS       : $ivps1"
echo -e "$COLOR1 ${NC}  Expired Date : $exp"
echo -e "$COLOR1 ${NC}  Client Name  : $name1"
cd
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  🔥 INFO DELETE IP </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>CLIENT NAME   : <code>${name1}</code></b>
<b>IP VPS CLIENT  : <code>${ivps1}</code></b>
<b>EXPIRED DATE  : <code>${exp}</code></b>
<b>Succes Delete this IP</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 2menit Dulu Lalu Masuk Lagi</i>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
rm -rf /root/rmbl >/dev/null 
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌──────────────── ${WH}BY${NC} ${RED}─────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function tambahip(){
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)

author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
cd
rm -rf /root/rmbl &> /dev/null
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
git init &> /dev/null
clear
NUMBER_OF_CLIENTS=$(grep -c -E "ON " "ipmini")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
  clear
echo -e "$RED┌─────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}     ${WH}тАв TAMBAH LIMIT IPVPS тАв              ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}   [INFO] You have no existing clients!"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌──────────────── ${WH}BY${NC} ${RED}─────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
clear
echo -e "$RED┌─────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}     ${WH}тАв TAMBAH LIMIT IPVPS тАв              ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────┐${NC}"
grep -E "ON " "ipmini" | cut -d ' ' -f 2-6 | nl -s '. '
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌──────────────── ${WH}BY${NC} ${RED}─────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e ""
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
  if [[ ${CLIENT_NUMBER} == '1' ]]; then
    read -rp " Select one client Ctrl + C Exit [1]: " CLIENT_NUMBER
  else
    read -rp " Select one client or Input [0] to back. [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
  if [[ ${CLIENT_NUMBER} == '0' ]]; then 
  cd
    rm -rf /root/rmbl >/dev/null 
	m-ip
	fi
	fi
	done

name1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 2 | sed -n "$CLIENT_NUMBER"p) #name
exp=$(grep -E "^### " "ipmini" | cut -d ' ' -f 3 | sed -n "$CLIENT_NUMBER"p) #exp
ivps1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 4 | sed -n "$CLIENT_NUMBER"p) #ip
admin=$(grep -E "^### " "ipmini" | cut -d ' ' -f 5 | sed -n "$CLIENT_NUMBER"p) #iptambah
iptambah=$(grep -E "^### " "ipmini" | cut -d ' ' -f 6 | sed -n "$CLIENT_NUMBER"p) #iptambah

asd=""
zx="OFF"
if [ "$admin" = "$zx" ]; then
echo -e "BUKAN ADMIN"
tambahip
fi

if [ "$admin" = "$asd" ]; then 
echo -e "BUKAN ADMIN"
tambahip
fi

until [[ $ipbaru =~ ^[0-9]+$ ]]; do
read -rp "   Input Angka Tambahan Limit IPNYA: " ipbaru
done
ipbaru2=$(expr "$iptambah" + "$ipbaru")
sed -i "s/### $name1 $exp $ivps1 $admin $iptambah/### $name1 $exp $ivps1 $admin $ipbaru2/g" ipmini &> /dev/null
hariini2=$(date -d "0 days" +"%Y-%m-%d")

git add ipmini
git commit -m remove &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission.git &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission.git &> /dev/null
clear
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}         ${WH}тАв TAMBAH IPVPS ADMIN тАв        ${NC} $COLOR1 $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  Client IP Successfully Add"
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  Name Client   : $name1"
echo -e "$COLOR1 ${NC}  IP OLD RESS  : $iptambah IP"
echo -e "$COLOR1 ${NC}  NEW ADD IP  : $ipbaru IP"

TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> 🔥 INFO TAMBAH IP RESELLER </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>CLIENT NAME   : <code>${name1} </code></b>
<b>SISA IP  : <code>${iptambah} IP</code></b>
<b>TAMBAHAN IP  : <code>>${ipbaru} IP</code></b>
<b>Succes Tambah IP Reseller</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 5Menit Untuk Server KeRefresh</i>
" 

cd
rm -rf /root/rmbl >/dev/null 
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌──────────── ${WH}BY${NC} ${RED}───────────────┐${NC}"
echo -e "$RED ${NC}       ${WH}• $author •${NC}         $RED $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function gantinama(){
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)

author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
cd
rm -rf /root/rmbl &> /dev/null
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
git init &> /dev/null
#touch ipmini &> /dev/null
clear
grep -E "$uu$listuser" "ipmini" >>/root/rmbl/client

if [ "$superadmin" = "VIP" ]; then
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "ipmini")
else
NUMBER_OF_CLIENTS=$(grep -c -E "^###" "client")
fi

if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
  clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}тАв GANTI NAMA IPVPS тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}   [INFO] You have no existing clients!"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                ${WH}тАв $author тАв${NC}                 $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}тАв GANTI NAMA IPVPS тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
if [ "$superadmin" = "VIP" ]; then
grep -E "^### " "ipmini" | cut -d ' ' -f 2-4 | nl -s '. '
else
grep -E "^###" "client" | cut -d ' ' -f 2-4 | nl -s '. '
fi
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
  if [[ ${CLIENT_NUMBER} == '1' ]]; then
    read -rp " Select one client Ctrl + C Exit [1]: " CLIENT_NUMBER
  else
    read -rp " Select one client or Input [0] to back. [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
  if [[ ${CLIENT_NUMBER} == '0' ]]; then
  cd 
    rm -rf /root/rmbl >/dev/null 
	m-ip
	fi
	fi
	done


read -rp "   Please Input New Name : " namabaru

if [ "$superadmin" = "VIP" ]; then
name1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 2 | sed -n "$CLIENT_NUMBER"p) #name
exp=$(grep -E "^### " "ipmini" | cut -d ' ' -f 3 | sed -n "$CLIENT_NUMBER"p) #exp
ivps1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 4 | sed -n "$CLIENT_NUMBER"p) #ip
else
name1=$(grep -E "^### " "client" | cut -d ' ' -f 2 | sed -n "$CLIENT_NUMBER"p) #name
exp=$(grep -E "^### " "client" | cut -d ' ' -f 3 | sed -n "$CLIENT_NUMBER"p) #exp
ivps1=$(grep -E "^### " "client" | cut -d ' ' -f 4 | sed -n "$CLIENT_NUMBER"p) #ip
fi
sed -i "s/### $name1/### $namabaru/g" ipmini &> /dev/null
hariini2=$(date -d "0 days" +"%Y-%m-%d")
TEXTD="
Name old     : $namabaru
Name New    : $name1
Status        : succes change
" 
echo "${TEXTD}" >>/root/rmbl/delete_log  &> /dev/null

git add ipmini
git commit -m remove &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission.git &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission.git &> /dev/null
clear
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}         ${WH}тАв GANTI NAMA IPVPS тАв        ${NC} $COLOR1 $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  Client IP Successfully Change"
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  Name old    : $name1"
echo -e "$COLOR1 ${NC}  Name New   : $namabaru"
echo -e "$COLOR1 ${NC}  IPVPS        : $ivps1"
cd
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> 🔥 CHANGE NAME IPVPS</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>IP VPS CLIENT  : <code>${ivps1}</code></b>
<b>CLIENT NAME OLD    : <code>${name1}</code></b>
<b>CLIENT NAME NEW    : <code>${masaaktif} Days</code></b>
<b>Succes Change Name</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 2menit Dulu Lalu Masuk Lagi</i>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

cd
rm -rf /root/rmbl >/dev/null 
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌──────────── ${WH}BY${NC} ${RED}───────────────┐${NC}"
echo -e "$RED ${NC}       ${WH}• $author •${NC}         $RED $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function gantiip(){
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)

author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
cd
rm -rf /root/rmbl &> /dev/null
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl >/dev/null
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
git init &> /dev/null
#touch ipmini &> /dev/null
clear
grep -E "$uu$listuser" "ipmini" >>/root/rmbl/client

if [ "$superadmin" = "VIP" ]; then
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "ipmini")
else
NUMBER_OF_CLIENTS=$(grep -c -E "^###" "client")
fi

if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
  clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}тАв GANTI USER IPVPS тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}   [INFO] You have no existing clients!"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}тАв GANTI USER IPVPS тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
if [ "$superadmin" = "VIP" ]; then
grep -E "^### " "ipmini" | cut -d ' ' -f 2-4 | nl -s '. '
else
grep -E "^###" "client" | cut -d ' ' -f 2-4 | nl -s '. '
fi
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
  if [[ ${CLIENT_NUMBER} == '1' ]]; then
    read -rp " Select one client Ctrl + C Exit [1]: " CLIENT_NUMBER
  else
    read -rp " Select one client or Input [0] to back. [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
  if [[ ${CLIENT_NUMBER} == '0' ]]; then
  cd
    rm -rf /root/rmbl >/dev/null 
	m-ip
	fi
	fi
	done

read -rp "   Please Input New IP : " ipbaru

if [ "$superadmin" = "VIP" ]; then
name1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 2 | sed -n "$CLIENT_NUMBER"p) #name
exp=$(grep -E "^### " "ipmini" | cut -d ' ' -f 3 | sed -n "$CLIENT_NUMBER"p) #exp
ivps1=$(grep -E "^### " "ipmini" | cut -d ' ' -f 4 | sed -n "$CLIENT_NUMBER"p) #ip
else
name1=$(grep -E "^### " "client" | cut -d ' ' -f 2 | sed -n "$CLIENT_NUMBER"p) #name
exp=$(grep -E "^### " "client" | cut -d ' ' -f 3 | sed -n "$CLIENT_NUMBER"p) #exp
ivps1=$(grep -E "^### " "client" | cut -d ' ' -f 4 | sed -n "$CLIENT_NUMBER"p) #ip
fi
U2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
U3=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $3}')
U4=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $4}')
U5=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $5}')
U6=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $6}')
ws=1

regip2=$(expr "$U6" - "$ws")
sed -i "s/### $U2 $U3 $U4 $U5 $U6/### $U2 $U3 $U4 $U5 $regip2/g" ipmini
sed -i "s/### $name1 $exp $ivps1/### $name1 $exp $ipbaru/g" ipmini &> /dev/null
hariini2=$(date -d "0 days" +"%Y-%m-%d")
TEXTD="
IPVPS old     : $ivps1
IPVPS New    : $ipbaru
Status        : succes change
" 
echo "${TEXTD}" >>/root/rmbl/delete_log  &> /dev/null

git add ipmini
git commit -m remove &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission.git &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission.git &> /dev/null
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}         ${WH}тАв GANTI IPVPS тАв        ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  Client IP Successfully Change"
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  IP VPS old    : $ivps1"
echo -e "$COLOR1 ${NC}  IP VPS New   : $ipbaru"
echo -e "$COLOR1 ${NC}  Client Name   : $name1"
cd
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  🔥 INFO GANTI IPVPS</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>Client Name   : <code>${name1}</code></b>
<b>IP Lama   : <code>${ivps1}</code></b>
<b>IP Baru  : <code>${ipbaru}</code></b>
<b>Succes Change</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 5Menit Untuk Server KeRefresh</i>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

cd
rm -rf /root/rmbl >/dev/null 
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌──────────── ${WH}BY${NC} ${RED}───────────────┐${NC}"
echo -e "$RED ${NC}       ${WH}• $author •${NC}         $RED $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function renewipvps(){
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)

author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
cd
rm -rf /root/casper >/dev/null 
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/rmbl
rm -rf .git &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
git init &> /dev/null
#touch ipmini

clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}${WH}тАв RENEW IPVPS тАв                ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
until [[ $iprenew =~ ^[0-9.]+$ ]]; do
read -p "   MASUKKAN IPNYA: " iprenew
REQIP=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini | grep $iprenew | awk '{print $4}')
if [[ $iprenew = $REQIP ]]; then
echo -ne
else
echo -e "$COLOR1 ${NC}  [INFO] IP VPS NOT FOUND!"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu" 
m-ip
fi
done
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}   ${WH}тАв RENEW IPVPS тАв                ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
until [[ $masaaktif =~ ^[0-3]+$ ]]; do
echo ""
read -p " Expired (days) Max 30 Day: " masaaktif
done
if [ -z $masaaktif ]; then
clear
echo -e "$RED┌──────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}тАв RENEW IPVPS тАв              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  [INFO] Please Input Correct Number"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e "$RED┌──────────── ${WH}BY${NC} ${RED}───────────────┐${NC}"
echo -e "$RED ${NC}       ${WH}• $author •${NC}         $RED $NC"
echo -e "$RED└────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi


name1=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini | grep $iprenew | awk '{print $2}') #name
exp=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini | grep $iprenew | awk '{print $3}') #exp
ivps1=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini | grep $iprenew | awk '{print $4}') #ip
trial=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini | grep $iprenew | awk '{print $5}') #ip 
MYIP=$(curl -sS ipv4.icanhazip.com)
UU2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')

U2=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
U3=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $3}')
U4=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $4}')
U5=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $5}')
U6=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $6}')


now=$(date +%Y-%m-%d)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(((d1 - d2) / 86400))
exp3=$(($exp2 + $masaaktif))
exp4=$(date -d "$exp3 days" +"%Y-%m-%d")
ws=1
regip2=$(expr "$U6" - "$ws")
sed -i "s/### $U2 $U3 $U4 $U5 $U6/### $U2 $U3 $U4 $U5 $regip2/g" ipmini

sed -i "s/### $name1 $exp $ivps1 $trial/### $name1 $exp4 $ivps1 @$UU2/g" ipmini

git add ipmini
git commit -m renew &> /dev/null 
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission.git &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission.git &> /dev/null
clear
echo -e "$RED┌──────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}      ${WH}тАв RENEW IPVPS тАв      ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  Client IP VPS Renew Successfully"
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  IP VPS        : $ivps1"
echo -e "$COLOR1 ${NC}  Renew Date    : $now"
echo -e "$COLOR1 ${NC}  Days Added    : $masaaktif Days"
echo -e "$COLOR1 ${NC}  Expired Date  : $exp4"
echo -e "$COLOR1 ${NC}  Client Name   : $name1"
cd
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> 🔥 RENEW IPVPS SCRIPT</b>
<code>◇━━━━━━━━━━━━━━◇</code<
<b>CLIENT NAME   : <code>${name1}</code></b>
<b>IP VPS CLIENT  : <code>${ivps1}</code></b>
<b>RENEW DATE    : <code>${now}</code></b>
<b>DAYS ADDED    : <code>${masaaktif} Days</code></b>
<b>EXPIRED DATE  : <code>${exp4}</code></b>
<b>Succes Renew This IP</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 5Menit Untuk Server KeRefresh</i>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
rm -rf /root/rmbl >/dev/null 
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo -e "$RED┌──────────────── ${WH}BY${NC} ${RED}─────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}

function useripvps(){
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)
author=$(cat /etc/profil)
cd
rm -rf /root/rmbl >/dev/null 
git config --global user.email "${EMAILGIT}"
git config --global user.name "${USERGIT}"
mkdir /root/rmbl
cd /root/rmbl/
rm -rf .git &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ipmini &> /dev/null
git init &> /dev/null
clear
grep -E "$uu$listuser" "ipmini" >>/root/rmbl/client
grep -E "@trial" "ipmini" >>/root/rmbl/client
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}               ${WH}• LIST IPVPS •              ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
if [ "$superadmin" = "VIP" ]; then
grep -E "^### " "ipmini" | cut -d ' ' -f 2-4 | nl -s '. '
else
grep -E "^###" "client" | cut -d ' ' -f 2-4 | nl -s '. '
fi
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
cd
rm -rf /root/rmbl >/dev/null 
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
Isadmin=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $5}')
ipmini=$(curl -sS https://raw.githubusercontent.com/angga2103/permission/main/ipmini | grep $MYIP | awk '{print $6}')
sisaip=$(cat /etc/regip/ipmini | wc -l) 
ss=0
if [ "$Isadmin" = "OFF" ]; then
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}            ${WH}• PREMIUM USER ONLY •              ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} [INFO] Only PRO Users Can Use This Panel"
echo -e "$RED ${NC} [INFO] Buy Premium Membership : "
echo -e "$RED ${NC} [INFO] PM : https://t.me/masansor2"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
fi
totalip=$(expr "$ipmini" - "$sisaip")
if [ $ss -gt $ipmini ]; then
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${RED}            ${WH}• PREMIUM USER ONLY •              ${NC} $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} [INFO] Only PRO Users Can Use This Panel"
echo -e "$RED ${NC} [INFO] Buy Premium Membership : "
echo -e "$RED ${NC} [INFO] PM : https://t.me/masansor2"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
fi
if [ $ipmini = $ss ]; then
clear
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} ${COLBG1}            ${WH}• PREMIUM USER ONLY •              ${NC} $COLOR1 $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌─────────────────────────────────────────────────┐${NC}"
echo -e "$RED ${NC} [INFO] SISA IP/KEY REGIST KAMU SUDAH HABIS"
echo -e "$RED ${NC} [INFO] Buy IP/KEY Premium SUPER ADMIN : "
echo -e "$RED ${NC} [INFO] PM : https://t.me/masansor2"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e "$RED┌────────────────────── ${WH}BY${NC} ${RED}───────────────────────┐${NC}"
echo -e "$RED ${NC}                ${WH}• $author •${NC}                 $RED $NC"
echo -e "$RED└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
fi
clear
echo -e "$RED╔═════════════════════════════════════════════════╗${NC}"
echo -e "$RED║${NC}${RED}            ${WH}• PANEL RESELLER IP •                ${NC}$RED║ $NC"
echo -e "$RED╚═════════════════════════════════════════════════╝${NC}"
echo -e "$RED╔═════════════════════════════════════════════════╗${NC}"
echo -e "$RED║ [01]$NC • ${WH}ADD IPVPS      $COLOR1 [05]$NC • ${WH}RENEW IPVPS       ${NC}$RED║ $NC"
echo -e "$RED║ [02]$NC • ${WH}KEY GENERATOR$COLOR1   [06]$NC • ${WH}LIST IPVPS        ${NC}$RED║ $NC"
echo -e "$RED║ [03]$NC • ${WH}DELETE IPVPS   $COLOR1 [07]$NC • ${WH}CHANGE IPVPS      ${NC}$RED║ $NC"
echo -e "$RED║ [04]$NC • ${WH}CHANGE NAME    $COLOR1 [08]$NC • ${WH}TAMBAH IP [ADMIN] ${NC}$RED║ $NC"
echo -e "$RED╚═════════════════════════════════════════════════╝${NC}"
echo -e "$RED╔═════════════════ ${WH}SISA IP REG${NC} ${RED}═══════════════════╗${NC}"
echo -e "$RED ${NC}                    ${WH}• $ipmini •${NC}                 $RED $NC"
echo -e "$RED╚═════════════════════════════════════════════════╝${NC}"
echo -e ""
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; add_ip ;;
02 | 2) clear ; genkey ;;
03 | 3) clear ; delipvps ;;
04 | 4) clear ; gantinama ;;
05 | 5) clear ; renewipvps ;;
06 | 6) clear ; useripvps ;;
07 | 7) clear ; gantiip;;
08 | 8) clear ; tambahip2 ;;
09 | 9) clear ; gantiip2 ;;
00 | 0) clear ; menu ;;
*) clear ; m-ip ;;
esac
