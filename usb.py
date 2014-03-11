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
tmpfile = "/etc/usbinv/usbrunning"


if operatingsystem == 'Linux':
	if os.path.isfile(tmpfile):								#script already running?
		print "already running"
		sys.exit(0)	
	else:											#script not running create a file to show it is running									
		file = open("tmpfile", "w")
		file.write("usbinventory is running\n")
		file.close()


	dmesg = subprocess.Popen(["/etc/usbinv/usb.sh"], stdout = subprocess.PIPE).communicate()[0]	#Compair dmesg and dmesg last time it ran.
	for line in dmesg.splitlines():

		if "> [" in line: 								#get whats added to dmesg 

    			if "SerialNumber:" in line:						#If line contains serialnumber
				serial = re.findall(r'(?<=SerialNumber: ).*',line)		#Grab the serial number
				usb_found = "True"

	   		if "Product:" in line:							#if line contains product
				product = re.findall(r'(?<=Product: ).*',line)			#grab product name
	    		if "Manufacturer:" in line:						
				manufactur = re.findall(r'(?<=Manufacturer: ).*',line)		#grab manufacturer
		else:
			usb_found = False

	time.sleep(1)
if operatingsystem == 'windows':								 # if windows then....
	print "Windos"  



if usb_found == 'True':
	computer = socket.getfqdn(socket.getfqdn()) 						#get pcname
        username = subprocess.Popen(["/etc/usbinv/who.sh"], stdout = subprocess.PIPE).communicate()[0] #get username out of who.sh
#	print operatingsystem
#	print computer
#	print serial[0]
#	print product[0]
#	print manufactur[0]
	db = MySQLdb.connect(host="145.100.104.168", 
                     user="workstation", 
                      passwd="AxjHFqWSdzuYVSaJ", 
                      db="usbinv") 
	cursor = db.cursor()

#	test for occurence in status table
	device_exists = False
        sql_status = "SELECT EXISTS(SELECT serialnumber FROM status WHERE serialnumber='%s')"%(serial[0])	
	print sql_status
	cursor.execute(sql_status)
	if cursor.fetchone()[0]:
		device_exists = True

# 	add the device to status table if it doesn't exists 
	if device_exists == False:
		sql_add_device = "INSERT INTO status (vendorname, type, serialnumber) VALUES('%s','%s', '%s')"%(manufactur[0],product[0],serial[0])
		cursor.execute(sql_add_device)
	sql = "INSERT INTO usbinv (computer,user, vendorname, type, serialnumber, os) VALUES('%s','%s', '%s', '%s', '%s', '%s')"%(computer,username,manufactur[0],product[0],serial[0],operatingsystem)
	print sql
#	cursor.execute(sql)
	db.commit()
	db.close()
	try:
		os.remove(tmpfile)								#remove the file that shows the script is running
	except:
		pass

#file.close()

