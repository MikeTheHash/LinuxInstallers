if [ $USER == "root" ];
then
  wget https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/18394/download?i_agree_to_tenable_license_agreement=true
  dpkg -i Nessus-10.4.2-ubuntu1404_amd64.deb
else
  echo "[!] You need to run this as root"
fi
