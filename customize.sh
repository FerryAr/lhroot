# Set permissions
ui_print "- Setting permissions"
set_perm $MODPATH/system/bin/lhroot 0 0 0777
set_perm $MODPATH/system/bin/bootlinux 0 0 0755
set_perm $MODPATH/mod-util.sh 0 0 0777
set_perm $MODPATH/system/bin/killlinux 0 0 0755
