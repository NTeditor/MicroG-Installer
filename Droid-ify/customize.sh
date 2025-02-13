chmod 644 $MODPATH/system/etc/default-permissions/microg-permissions.xml
chmod 644 $MODPATH/system/etc/permissions/com.google.android.maps.xml
chmod 644 $MODPATH/system/etc/permissions/privapp-permissions-microg.xml
chmod 644 $MODPATH/system/etc/sysconfig/microg.xml
chmod 644 $MODPATH/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk
chmod 644 $MODPATH/system/priv-app/Droid-ify/Droid-ify.apk
chmod 644 $MODPATH/system/priv-app/microGCompanion/microGCompanion.apk
chmod 644 $MODPATH/system/priv-app/microGServices/microGServices.apk
chmod 644 $MODPATH/system/product/overlay/microGOverlay/microGOverlay.apk
chmod 644 $MODPATH/system/product/overlay/PlayStoreOverlay/PlayStoreOverlay.apk
chmod 644 $MODPATH/system/framework/com.google.android.maps.jar

su -c pm install $MODPATH/system/priv-app/microGServices/microGServices.apk
su -c pm install $MODPATH/system/priv-app/microGCompanion/microGCompanion.apk
su -c pm install $MODPATH/system/priv-app/Droid-ify/Droid-ify.apk
su -c pm install --force-sdk $MODPATH/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk

chmod 755 $MODPATH/action.sh
