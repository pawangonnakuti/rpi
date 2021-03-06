#/bin/bash
sudo apt autoremove -y
sudo apt-get clean -y
sudo apt clean -y

# delete unused kernel module folder
sudo rm -rf /var/cache/man/
sudo rm -rf /usr/share/doc/
sudo rm -rf /usr/share/man/
sudo rm -rf /usr/share/locale/
sudo rm -rf /etc/sgml/
sudo rm -rf /opt/vc/lib/pkgconfig/

#make sure to do an upgrade to 4.19 using rpi-upgrade, or else you just bricked.
kerver = $(uname -r)
if ["$kerver" != "4.14.79-v7+"]; then
  sudo rm -rf /lib/modules/4.14.79-v7+/
fi
if ["$kerver" != "4.14.79+"]; then
  sudo rm -rf /lib/modules/4.14.79+
fi
if ["$kerver" != "4.19.32+"]; then
  sudo rm -rf /lib/modules/4.19.32+
fi
sudo rm -rf /boot.bak
sudo rm -rf /var/lib/apt/lists
sudo rm -r  /var/log/*
sudo rm -r  /var/backups/*
sudo rm -r  /var/tmp/*
sudo rm -r  /var/caches/*
sudo rm -r  /tmp/*
sudo rm -r  /run/log/*
sudo rm -rf /lib/modules.bak

#removing swap file
#sudo swapoff /var/swap
#sudo rm /var/swap


#must create a swap file on restoring the image.
#sudo fallocate -l 250M /var/swap
#sudo chmod 600 /var/swap
#sudo dd if=/dev/zero of=/var/swap bs=1024 count=1048
#sudo mkswap /var/swap
#sudo swapon /var/swap
