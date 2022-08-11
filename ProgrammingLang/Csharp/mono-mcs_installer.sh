sudo apt update
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt-add-repository 'deb https://download.mono-project.com/repo/ubuntu stable-bionic main'
sudo apt install mono-complete 
sudo apt-get install mono-mcs
