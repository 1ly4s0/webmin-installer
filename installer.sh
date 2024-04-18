#!/bin/bash

sudo apt update

echo "deb http://download.webmin.com/download/repository sarge contrib" | sudo tee -a /etc/apt/sources.list

wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add -

sudo apt update

sudo apt install webmin -y

echo -e "\e[32mWebmin installed successfully\e[0m"
