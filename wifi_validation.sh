
#!/bin/bash


ip="100.106.116.113"


echo "===== DATE ====="


echo ""
echo "===== HOSTNAME ====="
ssh warthog@$ip  "hostname"

echo ""
echo "===== IP ADDRESS ====="
ssh warthog@$ip "ip addr"

echo ""
echo "===== WIFI STATUS ====="
ssh warthog@$ip "iwconfig wlan0"

echo ""

echo "===== NETWORK TEST ====="

ssh warthog@$ip "ping -c 4 google.com"
