# product or system?

if [ $API -ge 28 ]; then
	echo "$API"
	echo "1"
elif [ $API -lt 28 ]; then
	echo "$API"
	echo "0"
else
	echo "$API"
	echo "Unknown"
fi

# product or system? end


ui_print "- Установка разрешений..."

set_perm $MODPATH/system/etc/default-permissions/microg-permissions.xml 0 0 0644
set_perm $MODPATH/system/etc/permissions/com.google.android.maps.xml 0 0 0644
set_perm $MODPATH/system/etc/permissions/privapp-permissions-microg.xml 0 0 0644
set_perm $MODPATH/system/etc/sysconfig/microg.xml 0 0 0644
set_perm $MODPATH/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk 0 0 0644
set_perm $MODPATH/system/priv-app/microGCompanion/microGCompanion.apk 0 0 0644
set_perm $MODPATH/system/priv-app/microGServices/microGServices.apk 0 0 0644
set_perm $MODPATH/system/product/overlay/microGOverlay/microGOverlay.apk 0 0 0644
set_perm $MODPATH/system/product/overlay/PlayStoreOverlay/PlayStoreOverlay.apk 0 0 0644
set_perm $MODPATH/system/framework/com.google.android.maps.jar 0 0 0644

set_perm $MODPATH/service.sh 0 0 0755



