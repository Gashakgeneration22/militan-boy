#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
echo -e ""
figlet Panel TrojanGFW | lolcat
echo -e "\e[32m════════════════════════════════════════\e[m" | lolcat
echo -e "             ═══[TrojanGFW]═══" 
echo -e "\e[32m════════════════════════════════════════\e[m" | lolcat
echo -e "$bd 1$bl]\e[m $bd Create Trojan Account"
echo -e "$bd 2$bl]\e[m $bd Deleting Trojan Account"
echo -e "$bd 3$bl]\e[m $bd Renew Trojan Account"
echo -e "$bd 4$bl]\e[m $bd Check User Login Trojan"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU   \e[m"  | lolcat
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  trojan
echo -e ""
case $trojan in
1)
add-tr
;;
2)
del-tr
;;
3)
renew-tr
;;
4)
cek-tr
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
