dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
if [ "${EUID}" -ne 0 ]; then
echo -e "${EROR} Please Run This Script As Root User !"
exit 1
fi
clear
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m           >>> Install Sistem <<<          \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1
wget -q https://raw.githubusercontent.com/taoomatoa/src/ipuk/tools/arzsource.sh && chmod +x arzsource.sh && ./arzsource.sh
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m          >>> Install SSH / WS <<<        \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1
wget -q https://raw.githubusercontent.com/taoomatoa/src/ipuk/tools/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m            >>> Install Xray <<<         \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1
wget -q https://raw.githubusercontent.com/taoomatoa/src/ipuk/tools/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m            >>> Install BR <<<           \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1
wget -q https://raw.githubusercontent.com/taoomatoa/src/ipuk/backup/set-br.sh && chmod +x set-br.sh && ./set-br.sh
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m            >>> Install slowdns <<<           \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1
wget https://raw.githubusercontent.com/Andyvpn/Autoscript-by-azi/main/autoscript-ssh-slowdns-main/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
echo -e "${GREEN}Download Data${NC}"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/taoomatoa/src/ipuk/usernew.sh"
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/taoomatoa/src/ipuk/add-ws.sh"
wget -q -O /usr/bin/add-ssws "https://raw.githubusercontent.com/taoomatoa/src/ipuk/add-ssws.sh"
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/taoomatoa/src/ipuk/add-vless.sh"
wget -q -O /usr/bin/add-tr "https://raw.githubusercontent.com/taoomatoa/src/ipuk/add-tr.sh"
wget -q -O /usr/bin/autoreboot "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/autoreboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/tendang.sh"
wget -q -O /usr/bin/clearlog "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/clearlog.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/running.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/taoomatoa/src/ipuk/tools/speedtest_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/cek-bandwidth.sh"
wget -q -O /usr/bin/limitspeed "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/limitspeed.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu-backup.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu.sh"
wget -q -O /usr/bin/webmin "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/webmin.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/taoomatoa/src/ipuk/xp.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/update.sh"
wget -q -O /usr/bin/addhost "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/addhost.sh"
wget -q -O /usr/bin/certxray "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/crt.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/taoomatoa/src/ipuk/menu/menu-set.sh"
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/info.sh"
wget -q -O /usr/bin/infoserv "https://raw.githubusercontent.com/taoomatoa/src/ipuk/options/infoserv.sh"
chmod +x /usr/bin/usernew
chmod +x /usr/bin/add-ws
chmod +x /usr/bin/add-ssws
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/limitspeed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/addhost
chmod +x /usr/bin/certxray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/info
chmod +x /usr/bin/infoserv
cat > /etc/cron.d/xp_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 0 * * * root /usr/bin/xp
END
cat > /etc/cron.d/cl_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 1 * * * root /usr/bin/clearlog
END
cat > /home/re_otm <<-END
7
END
service cron restart >/dev/null 2>&1
service cron reload >/dev/null 2>&1
clear
cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
if [ -f "/etc/afak.conf" ]; then
rm -fr /etc/afak.conf
fi
if [ ! -f "/etc/log-create-user.log" ]; then
echo "Log All Account " > /etc/log-create-user.log
fi
history -c
serverV=$( curl -sS https://raw.githubusercontent.com/taoomatoa/src/ipuk/version  )
echo $serverV > /opt/.ver
aureb=$(cat /home/re_otm)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi
curl -sS ifconfig.me > /etc/myipvps
echo  ""
echo  "------------------------------------------------------------"
echo  ""
echo  "   >>> Service & Port"  | tee -a log-install.txt
echo  "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo  "   - SSH Websocket           : 80" | tee -a log-install.txt
echo  "   - SSH SSL Websocket       : 443" | tee -a log-install.txt
echo  "   - Stunnel5                : 447, 777" | tee -a log-install.txt
echo  "   - Dropbear                : 109, 143" | tee -a log-install.txt
echo  "   - Badvpn                  : 7100-7300" | tee -a log-install.txt
echo  "   - Nginx                   : 81" | tee -a log-install.txt
echo  "   - XRAY  Vmess TLS         : 443" | tee -a log-install.txt
echo  "   - XRAY  Vmess None TLS    : 80" | tee -a log-install.txt
echo  "   - XRAY  Vless TLS         : 443" | tee -a log-install.txt
echo  "   - XRAY  Vless None TLS    : 80" | tee -a log-install.txt
echo  "   - Trojan GRPC             : 443" | tee -a log-install.txt
echo  "   - Trojan WS               : 443" | tee -a log-install.txt
echo  "   - Sodosok WS/GRPC         : 443" | tee -a log-install.txt
echo  "   - SlowDNS                 : 53,5300,443" | tee -a log-install.txt
echo  ""  | tee -a log-install.txt
echo  "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo  "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo  "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo  "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo  "   - IPtables                : [ON]"  | tee -a log-install.txt
echo  "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo  "   - Autoreboot              : 00.00 GMT +7" | tee -a log-install.txt
echo  "   - AutoKill Multi Login User" | tee -a log-install.txt
echo  "   - Auto Delete Expired Account" | tee -a log-install.txt
echo  "   - Fully automatic script" | tee -a log-install.txt
echo  "   - VPS settings" | tee -a log-install.txt
echo  "   - Restore Data" | tee -a log-install.txt
echo  "   - Full Orders For Various Services" | tee -a log-install.txt
echo ""
echo  ""
echo  "------------------------------------------------------------"
echo -e ""
echo  ""
echo  "" | tee -a log-install.txt
rm -fr /root/limit
rm -fr /root/weleh.sh
rm -fr /root/arzsource.sh
rm -fr /root/ssh-vpn.sh
rm -fr /root/ins-xray.sh
rm -fr /root/setup.sh
rm -fr /root/domain
history -c
echo -ne "[ ${yell}WARNING${NC} ] Apakah Anda Ingin Reboot Sekarang ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi
