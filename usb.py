import getpass
import socket
import platform
import subprocess
import sys
import re
import MySQLdb
os = platform.system()
usb_found = "False"





if os == 'Linux':

	dmesg = subprocess.Popen(["/tmp/usb.sh"], stdout = subprocess.PIPE).communicate()[0]
	for line in dmesg.splitlines():

		if "> [" in line:

    			if "SerialNumber:" in line:
				 serial = re.findall(r'SerialNumber:.*',line)
				 usb_found = "True"
#      				 serial = line
	   		if "Product:" in line:
				 product = re.findall(r'Product:.*',line)
#       				 product = line
	    		if "Manufacturer:" in line:
				 manufactur = re.findall(r'Manufacturer:.*',line)
#       				 manufactur =  line

		else:
			usb_found = False


if os == 'windows':
	print "Windos"  


if usb_found == 'True':
	print os
	print socket.getfqdn(socket.getfqdn())
	print getpass.getuser()
	username = getpass.getuser()
	print serial
	print product
	print manufactur
	db = MySQLdb.connect(host="localhost", # your host, usually localhost
                     user="adduser", # your username
                      passwd="Dhct3XQeBsDqKwcm", # your password
                      db="usbinv") # name of the data base
	cursor = db.cursor()

	
	serial = "e"
	product = "d"
	manufactur = "a"

	sql = ("INSERT INTO usbinv (user, vendorname, type, serialnumber, os) VALUES(%s, %s, %s, %s, %s)",(username,manufactur,product,serial,os))	
	print sql
	cursor.execute(sql)
	db.commit()
	db.close()


