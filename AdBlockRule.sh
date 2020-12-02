rm /home/ADLIST/*.*
mv /etc/hosts /etc/hosts.yedek
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts -O /etc/hosts
wget https://adaway.org/hosts.txt -O /home/ADLIST/adaway.list
wget https://raw.githubusercontent.com/ozdemibr/usomlist/master/usomblacklist -O /home/ADLIST/hosts_mix
cat /home/ADLIST/hosts_mix | while read line ; do echo -e "0.0.0.0 $line"; done > /home/ADLIST/usom.list
rm /home/ADLIST/hosts_mix
wget http://winhelp2002.mvps.org/hosts.txt -O /home/ADLIST/adaway4.list
wget https://www.malwaredomainlist.com/hostslist/hosts.txt -O /home/ADLIST/malware.list
wget https://raw.githubusercontent.com/hl2guide/Filterlist-for-AdGuard/master/filter_blocklist.txt -O /home/ADLIST/hosts_mix2
cat /home/ADLIST/hosts_mix2 | while read line ; do echo -e "0.0.0.0 $line"; done > /home/ADLIST/adaway3.list
rm /home/ADLIST/hosts_mix2
wget https://raw.githubusercontent.com/ozdemibr/seoblacklist/master/seoblacklist -O /home/ADLIST/seoblack.list
service dnsmasq restart
service openvpn restart
