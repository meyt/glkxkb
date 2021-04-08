#!/bin/sh

echo "Remove changes..."
rm "/usr/share/X11/xkb/symbols/ir"
rm "/usr/share/X11/xkb/rules/base.xml"
rm "/usr/share/X11/xkb/rules/evdev.xml"
rm "/usr/share/X11/xkb/rules/base.extras.xml" 
rm "/usr/share/X11/xkb/rules/evdev.extras.xml" 
rm "/usr/share/X11/xkb/rules/base.lst" 
rm "/usr/share/X11/xkb/rules/evdev.lst" 

echo "Restore snapshot..."
mv "/usr/share/X11/xkb/ir.bk" "/usr/share/X11/xkb/symbols/ir"
mv "/usr/share/X11/xkb/base.xml.bk" "/usr/share/X11/xkb/rules/base.xml"
mv "/usr/share/X11/xkb/evdev.xml.bk" "/usr/share/X11/xkb/rules/evdev.xml"
mv "/usr/share/X11/xkb/base.extras.bk" "/usr/share/X11/xkb/rules/base.extras.xml"
mv "/usr/share/X11/xkb/evdev.extras.bk" "/usr/share/X11/xkb/rules/evdev.extras.xml"
mv "/usr/share/X11/xkb/base.lst.bk" "/usr/share/X11/xkb/rules/base.lst"
mv "/usr/share/X11/xkb/evdev.lst.bk" "/usr/share/X11/xkb/rules/evdev.lst"

echo "Done"
