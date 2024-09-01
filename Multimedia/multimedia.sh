#!/usr/bin/env bash
sudo rm -r /etc/apt/sources.list.d/multimedia12.list
sudo rm -r /etc/apt/sources.list.d/multimedia.list
sudo rm -r /etc/apt/sources.list.d/archive_uri-https_www_deb-multimedia_org-bookworm.list
sudo rm -r /etc/apt/sources.list.d/archive_uri-https_www_deb-multimedia_org-bookworm.list.save
sudo dpkg -i "${scriptdir}"repo/clave/multimedia.deb
sudo cp "${scriptdir}"repo/multimedia12.list /etc/apt/sources.list.d
sudo apt update -y
sudo apt remove --purge libturbojpeg0 -y
sudo dpkg -i "${scriptdir}"repo/dep/0.deb
sudo apt -f install -y
sudo dpkg -i "${scriptdir}"repo/dep/1.deb
sudo apt -f install -y
sudo dpkg -i "${scriptdir}"repo/dep/2.deb
sudo apt -f install -y
sudo dpkg -i "${scriptdir}"repo/dep/3.deb
sudo apt -f install -y
sudo dpkg -i "${scriptdir}"repo/dep/4.deb
sudo apt -f install -y
sudo dpkg -i "${scriptdir}"repo/dep/5.deb
sudo apt -f install -y
sudo apt install synaptic gdebi lame libaften0 liblavfile-2.2-0 liblavjpeg-2.2-0 liblavplay-2.2-0 libmp4v2-2 mencoder mjpegtools twolame libvpx7 libfdk-aac2 -y
