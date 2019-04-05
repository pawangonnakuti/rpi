#/bin/bash
sudo apt purge apt-utils manpages python* perl* bsd* ssh* openssh* vim-tiny vim-common ed xxd info install-info dc dos* cifs-utils libx11-data -y
sudo apt purge v4l-utils xml-core libpython3* debconf-i18n xz-utils bzip* unzip* tasksel rsyslog logrotate libpam-chksshpwd debconf-utils -y
sudo apt purge linux-libc-dev libmnl-dev* libraspberrypi-dev* libraspberrypi-doc -y
sudo apt purge gcc-4.6* gcc-4.7* gcc-4.8* gcc-4.9* gcc-5* libc-l10n tzdata -y