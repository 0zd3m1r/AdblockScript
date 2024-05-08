rm /home/ADLIST/*
mv /etc/hosts /etc/hosts.yedek

wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/malicious/blocklistproject.fraud.txt -O /home/ADLIST/sefinek_fraud
#wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/fraud.txt -O /home/ADLIST/sefinek_fraud
wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/malicious/phishing.txt -O /home/ADLIST/sefinek_phishing
wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/malicious/blocklistproject.abuse.txt -O /home/ADLIST/sefinek_abuse
wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/malicious/blocklistproject.malware.txt -O /home/ADLIST/sefinek_malware
wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/malicious/reported-by-norton.txt -O /home/ADLIST/sefinek_norton
wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/ads/yoyo.AdsTrackersEtc.txt -O /home/ADLIST/AdsTrackerEtc
sed '/^#/d' /home/ADLIST/AdsTrackerEtc > /home/ADLIST/AdsTrackerEtc.list
rm /home/ADLIST/AdsTrackerEtc

wget https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts -O /home/ADLIST/1024Hosts.list
wget https://tgc.cloud/downloads/hosts.txt -O /home/ADLIST/10Zin.list

sed '/^#/d' /home/ADLIST/sefinek_fraud > /home/ADLIST/sefinek_fraud.list
sed '/^#/d' /home/ADLIST/sefinek_phishing > /home/ADLIST/sefinek_phishing.list
sed '/^#/d' /home/ADLIST/sefinek_abuse > /home/ADLIST/sefinek_abuse.list
sed '/^#/d' /home/ADLIST/sefinek_malware > /home/ADLIST/sefinek_malware.list
sed '/^#/d' /home/ADLIST/sefinek_norton > /home/ADLIST/sefinek_norton.list

rm /home/ADLIST/sefinek_fraud
rm /home/ADLIST/sefinek_phishing
rm /home/ADLIST/sefinek_abuse
rm /home/ADLIST/sefinek_malware
rm /home/ADLIST/sefinek_norton


#wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O /etc/hosts
#wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts -O /etc/hosts
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts -O /home/ADLIST/StevenBlack
cat /home/ADLIST/StevenBlack | uniq | sed '/^$/d' | sed '/#/d'  | sed '/:/d' > /etc/hosts # : ve # içeren satırları ve boş satırları sil

wget https://adaway.org/hosts.txt -O /home/ADLIST/adaway.list
wget https://raw.githubusercontent.com/0zd3m1r/usomlist/master/usomblacklist -O /home/ADLIST/hosts_duzensiz
#wget https://www.usom.gov.tr/url-list.txt -O /home/ADLIST/hosts_duzensiz
cat /home/ADLIST/hosts_duzensiz | while read line ; do echo "0.0.0.0 $line"; done | sed 's/\/.*$//' > /home/ADLIST/usom #başına 0.0.0.0 ekle ve / işaretinden sonra dizin içeren sitelerin / sonrasını kaldır
tr -d $'\r' < /home/ADLIST/usom > /home/ADLIST/usom.list # satır sonlarında oluşan ^M işaretlerini temizle
rm /home/ADLIST/usom
rm /home/ADLIST/hosts_duzensiz

#wget https://raw.githubusercontent.com/slyfox1186/pihole.youtube.blocklist/main/blacklist/youtube-standard-filters.txt -O /home/ADLIST/Youtube_duzensiz
#cat /home/ADLIST/Youtube_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/Youtube.list
#rm /home/ADLIST/Youtube_duzensiz
wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/ads/jerryn70.GoodbyeAds.txt -O /home/ADLIST/GoodbyeAds
sed '/^#/d' /home/ADLIST/GoodbyeAds > /home/ADLIST/GoodbyeAds.list
rm /home/ADLIST/GoodbyeAds
wget https://raw.githubusercontent.com/sefinek24/Sefinek-Blocklist-Collection/main/blocklist/generated/0.0.0.0/ads/blocklistproject.ads.txt -O /home/ADLIST/Blocklist
sed '/^#/d' /home/ADLIST/Blocklist > /home/ADLIST/Blocklist.list
rm /home/ADLIST/Blocklist
#wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt -O /home/ADLIST/GoodbyeAds.list
wget http://winhelp2002.mvps.org/hosts.txt -O /home/ADLIST/adaway4.list   ## bunu aktifleştirince youtube vs aşırı yavaşlıyor.

#wget https://raw.githubusercontent.com/notracking/hosts-blocklists/master/dnscrypt-proxy/dnscrypt-proxy.blacklist.txt -O /home/ADLIST/notracking_duzensiz
#cat /home/ADLIST/notracking_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/notracking.list
#rm /home/ADLIST/notracking_duzensiz
#Suspicious firebog
wget https://v.firebog.net/hosts/neohostsbasic.txt -O /home/ADLIST/firebog_duzensiz
cat /home/ADLIST/firebog_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/firebog.list
rm /home/ADLIST/firebog_duzensiz
wget https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt -O /home/ADLIST/tracking_duzensiz
cat /home/ADLIST/tracking_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/tracking.list
rm /home/ADLIST/tracking_duzensiz
#Tracking & Telemetry firebog
#wget https://v.firebog.net/hosts/Easyprivacy.txt -O /home/ADLIST/privacy_duzensiz
#cat /home/ADLIST/privacy_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/privacy.list
#rm /home/ADLIST/privacy_duzensiz
#wget https://v.firebog.net/hosts/Prigent-Ads.txt -O /home/ADLIST/prigent_duzensiz
#cat /home/ADLIST/prigent_duzensiz | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/prigentads.list
#rm /home/ADLIST/prigent_duzensiz

#wget https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser -O /home/ADLIST/CoinMiner.list
#wget https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt -O /home/ADLIST/WindowsSpyBlocker.list #TrackingTelemetry #firebog
#wget https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt -O /home/ADLIST/adfilt.list #Malicious #firebog

#wget https://www.malwaredomainlist.com/hostslist/hosts.txt -O /home/ADLIST/malware.list
wget https://raw.githubusercontent.com/bkrucarci/turk-adlist/master/hosts -O /home/ADLIST/adawayturk.list
#wget https://feodotracker.abuse.ch/blocklist/?download=ipblocklist
#mv /root/'index.html?download=ipblocklist' /home/feodotrojan.list
#wget https://raw.githubusercontent.com/hl2guide/Filterlist-for-AdGuard/master/filter_blocklist.txt -O /home/ADLIST/hosts_duzensiz2
#cat /home/ADLIST/hosts_duzensiz2 | while read line ; do echo "0.0.0.0 $line"; done > /home/ADLIST/adaway3.list
#rm /home/ADLIST/hosts_duzensiz2
#wget https://raw.githubusercontent.com/0zd3m1r/seoblacklist/master/seoblacklist -O /home/ADLIST/seoblack.list
sed -i '/fc\.yahoo\.com/d' /etc/hosts
sed -i '4 i 127.0.0.1 ubuntu-4gb-nbg1-2' /etc/hosts
service dnsmasq restart
#service openvpn restart
systemctl restart openvpn-server@server.service
systemctl restart wg-quick@wg0.service
#sed -i '6 i 69.147.92.11 query2.finance.yahoo.com' /etc/hosts
