#!/usr/bin/python
import getpass
import socket
import platform
import subprocess
import sys
import re
import MySQLdb
import os
import time
operatingsystem = platform.system()
usb_found = "False"
tmpfile = "/tmp/usbrunning"
#logfile = "/tmp/usbinv.log"




#file = open(logfile, "w")
#file.write("usbinventory is running\n")


if operatingsystem == 'Linux':
	file.write("operating system = linux\n")

	if os.path.isfile(tmpfile):
		print "already running"
		sys.exit(0)
	else:
		file = open("tmpfile", "w")
		file.write("usbinventory is running\n")
		file.close()


	dmesg = subprocess.Popen(["/tmp/usb.sh"], stdout = subprocess.PIPE).communicate()[0]
	for line in dmesg.splitlines():

		if "> [" in line:

    			if "SerialNumber:" in line:
				serial = re.findall(r'(?<=SerialNumber: ).*',line)
				usb_found = "True"

	   		if "Product:" in line:
				product = re.findall(r'(?<=Product: ).*',line)
	    		if "Manufacturer:" in line:
				manufactur = re.findall(r'(?<=Manufacturer: ).*',line)
		else:
			usb_found = False

	time.sleep(1)
if operatingsystem == 'windows':
	print "Windos"  
#	file.write("Windows found\n")



if usb_found == 'True':
# 	file.write("USB found\n")
	print operatingsystem
	computer = socket.getfqdn(socket.getfqdn())
	print socket.getfqdn(socket.getfqdn())
#	print os.getlogin()
#	username = os.getlogin()

#	print getpass.getuser()
#	username = getpass.getuser()
        username = subprocess.Popen(["/tmp/who.sh"], stdout = subprocess.PIPE).communicate()[0]

	print serial[0]
	print product[0]
	print manufactur[0]
	db = MySQLdb.connect(host="145.100.104.168", # your host, usually localhost
                     user="workstation", # your username
                      passwd="AxjHFqWSdzuYVSaJ", # your password
                      db="usbinv") # name of the data base
	cursor = db.cursor()

	
	sql = "INSERT INTO usbinv (computer,user, vendorname, type, serialnumber, os) VALUES('%s','%s', '%s', '%s', '%s', '%s')"%(computer,username,manufactur[0],product[0],serial[0],operatingsystem)
	print sql
#	cursor.execute(sql)
#	db.commit()
#	db.close()
	try:
		os.remove(tmpfile)
	except:
		pass

#file.close()

