#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/trial.sh"
wget -O change-port "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-tr.sh"
wget -O port-sstp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-sstp.sh"
wget -O port-squid "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/xp.sh"
wget -O limit-speed "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/limit-speed.sh"
wget -O trojanGO "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/trojanGO.sh"
wget -O v2raay "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/v2raay.sh"
wget -O wgr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/wgr.sh"
wget -O vleess "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/vleess.sh"
wget -O bbr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/bbr.sh"
wget -O bannerku "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/bannerku"
wget -O ssh "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/ssh.sh"
wget -O l2tp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/l2tp.sh"
wget -O sstpp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/sstpp.sh"
wget -O sssr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/ssssr.sh"
wget -O add-host "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-host.sh"
wget -O add-l2tp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-l2tp.sh"
wget -O add-pptp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-pptp.sh"
wget -O add-ss "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-ss.sh"
wget -O add-ssr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-ssr.sh"
wget -O add-sstp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-sstp.sh"
wget -O add-tr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-tr.sh"
wget -O add-trgo "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-trgo.sh"
wget -O add-vless "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-vless.sh"
wget -O add-wg "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-wg.sh"
wget -O add-ws "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-ws.sh"
wget -O autobackup "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/autobackup.sh"
wget -O autokill "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/autokill.sh"
wget -O backup "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/backup.sh"
wget -O add-host "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/add-host.sh"
wget -O bckp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/bckp.sh"
wget -O cek-pptp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek-pptp.sh"
wget -O cek-ss "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek-ss.sh"
wget -O cek-sstp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek-sstp.sh"
wget -O cek-tr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek-tr.sh"
wget -O cek-trgo "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek-trgo.sh"
wget -O cek-vless "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek-vless.sh"
wget -O cek-ws "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek-ws.sh"
wget -O cek "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cek.sh"
wget -O ceklim "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/ceklim.sh"
wget -O cert "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cert.sh"
wget -O cf "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cf.sh"
wget -O change "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/change.sh"
wget -O del-l2tp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-l2tp.sh"
wget -O del-pptp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-pptp.sh"
wget -O del-ss "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-ss.sh"
wget -O del-ssr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-ssr.sh"
wget -O del-sstp "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-sstp.sh"
wget -O del-tr "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-tr.sh"
wget -O del-trgo "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-trgo.sh"
wget -O del-vless "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-vless.sh"
wget -O del-wg "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-wg.sh"
wget -O del-ws "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/del-ws.sh"
wget -O delete "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/delete.sh"
wget -O edu-op "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/edu-op.py"
wget -O edu "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/edu.sh"
wget -O go "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/go.sh"
wget -O hapus "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/hapus.sh"
wget -O renew-trgo "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/renew-trgo.sh"
wget -O cff.sh "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/menu-all/cff.sh"
wget -O cfb "https://raw.githubusercontent.com/YakkoRasZ14/gaspoll/main/cfb.sh"
chmod +x cfb
chmod +x cff
chmod +x renew-trgo
chmod +x hapus
chmod +x go
chmod +x edu
chmod +x edu-op
chmod +x delete
chmod +x del-ws
chmod +x del-wg
chmod +x del-vless
chmod +x del-trgo
chmod +x del-tr
chmod +x del-sstp
chmod +x del-ssr
chmod +x del-ss
chmod +x del-pptp
chmod +x del-l2tp
chmod +x change
chmod +x cf
chmod +x cert
chmod +x ceklim
chmod +x cek
chmod +x cek-vless
chmod +x cek-trgo
chmod +x cek-tr
chmod +x cek-sstp
chmod +x cek-pptp
chmod +x cek-ss
chmod +x bckp
chmod +x backup
chmod +x autokill
chmod +x autobackup
chmod +x add-vless
chmod +x add-wg
chmod +x add-ws
chmod +x add-tr
chmod +x add-trgo
chmod +x add-sstp
chmod +x add-ss
chmod +x add-ssr
chmod +x add-pptp
chmod +x add-l2tp
chmod +x add-host
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x limit-speed
chmod +x trojanGO
chmod +x v2raay
chmod +x wgr
chmod +x vleess
chmod +x bbr
chmod +x bannerku
chmod +x ssh
chmod +x l2tp
chmod +x sstpp
chmod +x ssssr
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
