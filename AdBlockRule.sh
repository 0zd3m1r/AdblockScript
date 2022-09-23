rm /home/ADLIST/*.*
mv /etc/hosts /etc/hosts.yedek
#wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O /etc/hosts
#wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts -O /etc/hosts
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts -O /etc/hosts
wget https://adaway.org/hosts.txt -O /home/ADLIST/adaway.list
wget https://raw.githubusercontent.com/0zd3m1r/usomlist/master/usomblacklist -O /home/ADLIST/hosts_duzensiz
cat /home/ADLIST/hosts_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/usom.list
rm /home/ADLIST/hosts_duzensiz
#wget https://raw.githubusercontent.com/slyfox1186/pihole.youtube.blocklist/main/blacklist/youtube-standard-filters.txt -O /home/ADLIST/Youtube_duzensiz
#cat /home/ADLIST/Youtube_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/Youtube.list
#rm /home/ADLIST/Youtube_duzensiz
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt -O /home/ADLIST/GoodbyeAds.list
wget http://winhelp2002.mvps.org/hosts.txt -O /home/ADLIST/adaway4.list
wget https://www.malwaredomainlist.com/hostslist/hosts.txt -O /home/ADLIST/malware.list
wget https://raw.githubusercontent.com/bkrucarci/turk-adlist/master/hosts -O /home/ADLIST/adawayturk.list
#wget https://feodotracker.abuse.ch/blocklist/?download=ipblocklist
#mv /root/'index.html?download=ipblocklist' /home/feodotrojan.list
#wget https://raw.githubusercontent.com/hl2guide/Filterlist-for-AdGuard/master/filter_blocklist.txt -O /home/ADLIST/hosts_duzensiz2
#cat /home/ADLIST/hosts_duzensiz2 | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/adaway3.list
#rm /home/ADLIST/hosts_duzensiz2
#wget https://raw.githubusercontent.com/0zd3m1r/seoblacklist/master/seoblacklist -O /home/ADLIST/seoblack.list
service dnsmasq restart
service openvpn restart
