ui_print "Установка разришений..."

set_perm $MODPATH/system/etc/default-permissions/microg-permissions.xml 0 0 0644
set_perm $MODPATH/system/etc/permissions/com.google.android.maps.xml 0 0 0644
set_perm $MODPATH/system/etc/permissions/privapp-permissions-microg.xml 0 0 0644
set_perm $MODPATH/system/etc/sysconfig/microg.xml 0 0 0644
set_perm $MODPATH/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk 0 0 0644
set_perm $MODPATH/system/priv-app/Droid-ify/Drset_per.apk 0 0 0644
set_perm $MODPATH/system/priv-app/microGCompanion/microGCompanion.apk 0 0 0644
set_perm $MODPATH/system/priv-app/microGServices/microGServices.apk 0 0 0644
set_perm $MODPATH/system/product/overlay/microGOverlay/microGOverlay.apk 0 0 0644
set_perm $MODPATH/system/product/overlay/PlayStoreOverlay/PlayStoreOverlay.apk 0 0 0644
set_perm $MODPATH/system/framework/com.google.android.maps.jar 0 0 0 0 0644

#su -c pm install $MODPATH/system/priv-app/microGServices/microGServices.apk
#su -c pm install $MODPATH/system/priv-app/microGCompanion/microGCompanion.apk
#su -c pm install $MODPATH/system/priv-app/Droid-ify/Droid-ify.apk
#su -c pm install --bypass-low-target-sdk-block $MODPATH/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk

set_perm $MODPATH/1_service.sh 0 0 0755
ln -s $MODPATH/1_service.sh $MODPATH/service.sh

#su -c rm -r /data/system/package_cache
