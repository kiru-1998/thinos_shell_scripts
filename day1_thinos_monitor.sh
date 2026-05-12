


#!/bin/bash



ip="100.106.117.62"

echo "=======Thinos health check===="

echo "Device: $ip"
echo "time:$(date)"

echo "------------------------------"


#check connectivity

ping -c 1 $ip > /dev/null


if [ $? -eq 0 ]; then

	echo 'device is reachable'


	echo ""

	echo ========== UPTIME=====

	ssh -x  warthog@$ip "uptime"

	echo ""

	echo ====ERROR LOGS======

	ssh warthog@$ip "grep -i error cleanlogs.log"


else

	
	echo "device not reachable"

fi

echo""

echo " Check completed"
