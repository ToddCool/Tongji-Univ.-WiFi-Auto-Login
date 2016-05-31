sudo mv AutoLoginWifi.sh /usr/local
sudo mv com.Tongji.AutoLoginWiFi.plist  /Library/LaunchDaemons 
sudo launchctl load /Library/LaunchDaemons/com.Tongji.AutoLoginWiFi.plist
echo "You are good to go."
