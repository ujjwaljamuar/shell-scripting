echo "#############################################################"
echo "#                                                           #"
echo "# Hello, $USER on $HOSTNAME           #"
echo "#                                                           #"
echo "#############################################################"

echo ""

FREE_RAM=`free -m | grep Mem | awk '{print $4}'`
UP_TIME=$(uptime | awk '{print $9}')
ROOTFREE=`df -h | grep '/dev/sda2' | awk '{print $4}'`

echo "###########################"
echo "Current free ram is $FREE_RAM mb."
echo "Current load avg is $UP_TIME."
echo "Current free space is $ROOTFREE ."
echo "###########################"