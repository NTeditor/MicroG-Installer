MODDIR=/data/adb/modules/nteditor_microg

until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 1
done

su -c pm install $MODDIR/system/priv-app/microGServices/microGServices.apk
su -c pm install $MODDIR/system/priv-app/microGCompanion/microGCompanion.apk
su -c pm install $MODDIR/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk

su -c pm install $MODDIR/system/priv-app/Droid-ify/Droid-ify.apk

su -c sh $MODPATH/action.sh

rm -r $MODDIR/service.sh
