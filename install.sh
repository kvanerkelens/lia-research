#!/bin/bash
apt-get install python python-mysqldb wget
mkdir /etc/usbinv

wget -P /etc/usbinv/ http://145.100.104.168/usbdevices/lia-research/99-usb.rules
wget -P /etc/usbinv/ http://145.100.104.168/usbdevices/lia-research/usb.py
wget -P /etc/usbinv/ http://145.100.104.168/usbdevices/lia-research/usb.sh
wget -P /etc/usbinv/ http://145.100.104.168/usbdevices/lia-research/who.sh
chmod +x /etc/usbinv/usb.py
chmod +x /etc/usbinv/usb.sh
chmod +x /etc/usbinv/who.sh


cp /etc/usbinv/99-usb.rules /etc/udev/rules.d/99-usb.rules
udevadm control --reload-rules

