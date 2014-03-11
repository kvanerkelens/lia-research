#!/bin/bash


dmesg > /etc/usbinv/dmesg
diff /etc/usbinv/dmesgincrement /etc/usbinv/dmesg
#mv /etc/usbinv/dmesg /etc/usbinv/dmesgincrement
