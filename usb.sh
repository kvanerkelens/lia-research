#!/bin/bash


dmesg > /tmp/dmesg
diff /tmp/dmesgincrement /tmp/dmesg
#mv /tmp/dmesg /tmp/dmesgincrement
