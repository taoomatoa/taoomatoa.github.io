# SCRIPT XRAY TAOOMATOA

</p> 
<h2 align="center"> Supported Linux Distribution</h2>
<p align="center"><img src="https://d33wubrfki0l68.cloudfront.net/5911c43be3b1da526ed609e9c55783d9d0f6b066/9858b/assets/img/debian-ubuntu-hover.png"></p> 
<p align="center"><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%209&message=Stretch&color=purple"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%2010&message=Buster&color=purple">  <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2018&message=Lts&color=red"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2020&message=Lts&color=red">
</p>

<p align="center"><img src="https://img.shields.io/badge/Service-SSH_Over_Websocket-success.svg"> <img src="https://img.shields.io/badge/Service-SSH_UDP_Custom-success.svg"> <img src="https://img.shields.io/badge/Service-SSH_Dropbear-success.svg">  <img src="https://img.shields.io/badge/Service-Stunnel4-success.svg">  <img src="https://img.shields.io/badge/Service-Fail2Ban-brightgreen">  
<p align="center"><img src="https://img.shields.io/badge/Service-XRAY_VLESS-success.svg">  <img src="https://img.shields.io/badge/Service-XRAY_VMESS-success.svg">  <img src="https://img.shields.io/badge/Service-XRAY_TROJAN-success.svg"> <img src= "https://img.shields.io/badge/Service-Websocket-success.svg"> <img src= "https://img.shields.io/badge/Service-GRPC-success.svg"> <img src= "https://img.shields.io/badge/Service-Shadowsocks-success.svg">  
<p <p align="center"><img src="https://img.shields.io/badge/Service-Webmin-success.svg"> <img src="https://img.shields.io/badge/Service-Helium-success.svg">
<p <p align="center"><img src="https://wangchujiang.com/sb/status/stable.svg">

</p>

# [Step Install]
- Step 1 for (debian) please update first
```
apt update && apt upgrade -y && reboot
```
- Step 2 for (ubuntu) directly install
```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/taoomatoa/AutoScript/master/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
```
# Cloudflare settings for those who have their own Domain, you can check at folder [image](https://github.com/taoomatoa/AutoScript/tree/master/image) to display other settings
<br>
- SSL/TLS : FULL<br>
- SSL/TLS Recommender : OFF<br>
- GRPC : ON<br>
- WEBSOCKET : ON<br>
- Always Use HTTPS : OFF<br>
- UNDER ATTACK MODE : OFF<br>
<br>

# Pointing
![Pointing](https://raw.githubusercontent.com/taoomatoa/AutoScript/master/image/pointing.png)

## Service & Port:
<br>
- OpenSSH                  : 22<br>
- SSH Websocket            : 80<br>
- SSH SSL Websocket        : 443<br>
- Stunnel4                 : 222, 777<br>
- Dropbear                 : 109, 143<br>
- Badvpn                   : 7100-7900<br>
- Nginx                    : 81<br>
- Vmess WS TLS             : 443<br>
- Vless WS TLS             : 443<br>
- Trojan WS TLS            : 443<br>
- Shadowsocks WS TLS       : 443<br>
- Vmess WS none TLS        : 80<br>
- Vless WS none TLS        : 80<br>
- Trojan WS none TLS       : 80<br>
- Shadowsocks WS none TLS  : 80<br>
- Vmess gRPC               : 443<br>
- Vless gRPC               : 443<br>
- Trojan gRPC              : 443<br>
- Shadowsocks gRPC         : 443<br>
<br>
  
## Feature
- Speedtest® by [Ookla®](https://speedtest.net)
- Set Auto Reboot
- Restart All Service
- AUTO delete user Expired 
- Check Bandwith
- BBRPLUS version 1.4.0 by [Chikage0o0](https://github.com/Chikage0o0) What is BBR [Search now BBR](https://www.google.com/search?q=what+bbr+in+linux)
- DNS CHANGER
- no auto backup? which... is permanently removed
- Just accept the existing features / you can add them yourself manually
- Additional Features (Optional) skipper (NOTE) install after [Step Install] is complete
- Optional [install OpenVPN + Slowdns +](https://github.com/taoomatoa/AutoScript/tree/master/udp-custom) UDP-Custom by [Exe302](https://gitlab.com/Exe302) + Slowdns by [SL](https://github.com/fisabiliyusri)
- Optional [install Panel Webmin + ADS Block](https://github.com/taoomatoa/AutoScript/tree/master/helium) Helium version 3.0 by [Abi Darwish](https://github.com/abidarwish)
