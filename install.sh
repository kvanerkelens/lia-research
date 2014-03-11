#!/bin/bash
apt-get install python python-mysqldb
mkdir /etc/usbinv

wget -P /etc/usbinv/ http://145.100.104.168/usbdevices/lia-research/usb.py
wget -P /etc/usbinv/ http://145.100.104.168/usbdevices/lia-research/usb.sh
wget -P /etc/usbinv/ http://145.100.104.168/usbdevices/lia-research/who.sh
chmod /etc/usbinv/usb.py
chmod /etc/usbinv/usb.sh
chmod /etc/usbinv/who.sh


cp 99-usb.rules /etc/udev/rules.d/99-usb.rules
udevadm control --reload-rules
