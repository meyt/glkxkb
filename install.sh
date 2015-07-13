#!/bin/sh
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
echo "Create snapshot..."
mv "/usr/share/X11/xkb/symbols/ir" "/usr/share/X11/xkb/ir.bk" 
mv "/usr/share/X11/xkb/rules/base.xml" "/usr/share/X11/xkb/base.xml.bk" 
mv "/usr/share/X11/xkb/rules/evdev.xml" "/usr/share/X11/xkb/evdev.xml.bk" 

echo "Installing..."
cp "$SCRIPTPATH/src/ir" "/usr/share/X11/xkb/symbols/ir" 
cp "$SCRIPTPATH/src/base.xml" "/usr/share/X11/xkb/rules/base.xml" 
cp "$SCRIPTPATH/src/evdev.xml" "/usr/share/X11/xkb/rules/evdev.xml" 
echo "Done"