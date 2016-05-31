#!/bin/bash
if [[ "$(ping -c 1 180.76.76.76 | grep "100.0% packet loss")" != "" ]]; then
  echo Yes
  test=$(airport -I | /usr/local/bin/ggrep -oP "(?<=\WSSID: ).*")
  if [[ "$test" == "tongji.portal" ]]; 
  then
    echo Yes
    curl -d DDDDD="UserName1" -d upass="PassWord1" -d 0MKKey=""  http://172.30.0.94
  elif [[ "$test" == "tongji.student.portal" ]];
  then
    base_url="https://wlan.ct10000.com"
    auth_url=$base_url"/authServlet"
    user="UserName2"
    pass="PassWord2"
    real_url=$(curl -s -L 123.125.114.144 | /usr/local/bin/ggrep  -oP '(?<=frame name="mainFrame" src=").*?(?=")')
    real_url=$base_url$real_url
    encode_str=$(curl -s $real_url | /usr/local/bin/ggrep  -oP '(?<=paramStrEnc" value=").*?(?=")')
    curl -d UserName=$user -d PassWord=$pass -d paramStr=$encode_str -d province="student"  -v $auth_url > /dev/null 2>&1
  fi
fi
