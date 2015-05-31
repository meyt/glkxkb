#!/bin/bash
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
gksudo -w "dpkg -i $SCRIPTPATH/xkb-data_2.14-1_all_gilaki.deb"
reboot