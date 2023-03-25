if [ $USER == "root" ];
then
  curl https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/18943/download?i_agree_to_tenable_license_agreement=true --output Nessus.deb
  dpkg -i Nessus.deb
  systemctl status nessusd.service
  read -p "[?] Do you want to active Nessus service? > " usrinput
  if [ $usrinput == "Y" ];
  then
    systemctl start nessusd.service
    firefox "https://localhost:8834/#/"
  elif [ $usrinput == "y" ];
  then
    systemctl start nessusd.service
    firefox "https://localhost:8834/#/"
  else
    echo "Okay, happy hacking sir!"
  fi
else
  echo "[!] You need to run this as root"
fi
