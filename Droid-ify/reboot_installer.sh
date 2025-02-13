MODDIR=/data/adb/modules/nteditor_microg
su -c pm install $MODDIR/system/priv-app/microGServices/microGServices.apk
su -c pm install $MODDIR/system/priv-app/microGCompanion/microGCompanion.apk
su -c pm install $MODDIR/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk

su -c pm install $MODDIR/system/priv-app/Droid-ify/Droid-ify.apk

rm -r $MODDIR/service.sh
