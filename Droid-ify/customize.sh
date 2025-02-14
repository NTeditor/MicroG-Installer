ui_print "- Установка разрешений..."

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
set_perm $MODPATH/system/framework/com.google.android.maps.jar 0 0 0644

set_perm $MODPATH/service.sh 0 0 0755



