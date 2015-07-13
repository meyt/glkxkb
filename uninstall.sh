#!/bin/sh
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
echo "Remove changes..."
rm "/usr/share/X11/xkb/symbols/ir" 
rm "/usr/share/X11/xkb/rules/base.xml" 
rm "/usr/share/X11/xkb/rules/evdev.xml" 

echo "Restore snapshot..."
mv "/usr/share/X11/xkb/ir.bk" "/usr/share/X11/xkb/symbols/ir"
mv "/usr/share/X11/xkb/base.xml.bk" "/usr/share/X11/xkb/rules/base.xml"
mv "/usr/share/X11/xkb/evdev.xml.bk" "/usr/share/X11/xkb/rules/evdev.xml" 

echo "Done"