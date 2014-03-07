#!/bin/bash
who | grep tty | cut -d" " -f1-3
