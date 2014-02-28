import getpass
import socket
import platform
import subprocess
import sys

dmesg = subprocess.Popen(['dmesg'], stdout = subprocess.PIPE).communicate()[0]

os = platform.system()

if os == 'Linux':
	print "linux check"
	for line in dmesg.splitlines():
    		if "SerialNumber:" in line:
       			 print line

else:
	print "Windos"  


print socket.getfqdn(socket.getfqdn())
print getpass.getuser()
print os
