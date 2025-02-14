MODPATH="/data/adb/modules/nteditor_microg"


# Ожижидание загрузки устроиства...
resetprop -w sys.boot_completed 0

# Установка MicroG как пользовательское приложение
su -c pm install $MODPATH/system/priv-app/microGServices/microGServices.apk
su -c pm install $MODPATH/system/priv-app/microGCompanion/microGCompanion.apk
su -c pm install --bypass-low-target-sdk-block $MODPATH/system/app/ServicesFrameworkProxy/ServicesFrameworkProxy.apk

# Установка разришений для microG Companion (Возможны ощибки в консоли)
su -c pm grant com.android.vending "android.permission.ACCESS_COARSE_LOCATION"
su -c pm grant com.android.vending "android.permission.FAKE_PACKAGE_SIGNATURE"
su -c pm grant com.android.vending "android.permission.POST_NOTIFICATIONS"
su -c pm grant com.android.vending "android.permission.INTERNET"
su -c pm grant com.android.vending "android.permission.ACCESS_NETWORK_STATE"

# Установка разришений для microG Services (Возможны ощибки в консоли)
su -c pm grant com.google.android.gms "android.permission.ACCESS_BACKGROUND_LOCATION"
su -c pm grant com.google.android.gms "android.permission.ACCESS_COARSE_LOCATION"
su -c pm grant com.google.android.gms "android.permission.ACCESS_FINE_LOCATION"
su -c pm grant com.google.android.gms "android.permission.BLUETOOTH_ADVERTISE"
su -c pm grant com.google.android.gms "android.permission.BLUETOOTH_CONNECT"
su -c pm grant com.google.android.gms "android.permission.BLUETOOTH_SCAN"
su -c pm grant com.google.android.gms "android.permission.BODY_SENSORS"
su -c pm grant com.google.android.gms "android.permission.BODY_SENSORS_BACKGROUND"
su -c pm grant com.google.android.gms "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"
su -c pm grant com.google.android.gms "android.permission.FAKE_PACKAGE_SIGNATURE"
su -c pm grant com.google.android.gms "android.permission.GET_ACCOUNTS"
su -c pm grant com.google.android.gms "android.permission.INSTALL_LOCATION_PROVIDER"
su -c pm grant com.google.android.gms "android.permission.LOCATION_HARDWARE"
su -c pm grant com.google.android.gms "android.permission.MANAGE_USB"
su -c pm grant com.google.android.gms "android.permission.MODIFY_PHONE_STATE"
su -c pm grant com.google.android.gms "android.permission.NETWORK_SCAN"
su -c pm grant com.google.android.gms "android.permission.POST_NOTIFICATIONS"
su -c pm grant com.google.android.gms "android.permission.READ_CONTACTS"
su -c pm grant com.google.android.gms "android.permission.READ_EXTERNAL_STORAGE"
su -c pm grant com.google.android.gms "android.permission.READ_MEDIA_AUDIO"
su -c pm grant com.google.android.gms "android.permission.READ_MEDIA_IMAGES"
su -c pm grant com.google.android.gms "android.permission.READ_MEDIA_VIDEO"
su -c pm grant com.google.android.gms "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"
su -c pm grant com.google.android.gms "android.permission.READ_PHONE_STATE"
su -c pm grant com.google.android.gms "android.permission.RECEIVE_SMS"
su -c pm grant com.google.android.gms "android.permission.START_ACTIVITIES_FROM_BACKGROUND"
su -c pm grant com.google.android.gms "android.permission.SYSTEM_ALERT_WINDOW"
su -c pm grant com.google.android.gms "android.permission.UPDATE_APP_OPS_STATS"
su -c pm grant com.google.android.gms "android.permission.UPDATE_DEVICE_STATS"
su -c pm grant com.google.android.gms "android.permission.WATCH_APPOPS"
su -c pm grant com.google.android.gms "android.permission.WRITE_EXTERNAL_STORAGE"

# Установка разришений для Services Framework Proxy
su -c pm grant com.google.android.gsf "android.permission.POST_NOTIFICATIONS"

# Установка разришений для F-Droid
su -c pm grant org.fdroid.fdroid "android.permission.INTERNET"
su -c pm grant org.fdroid.fdroid "android.permission.ACCESS_NETWORK_STATE"
su -c pm grant org.fdroid.fdroid "android.permission.ACCESS_WIFI_STATE"
su -c pm grant org.fdroid.fdroid "android.permission.CHANGE_WIFI_MULTICAST_STATE"
su -c pm grant org.fdroid.fdroid "android.permission.CHANGE_NETWORK_STATE"
su -c pm grant org.fdroid.fdroid "android.permission.CHANGE_WIFI_STATE"
su -c pm grant org.fdroid.fdroid "android.permission.BLUETOOTH"
su -c pm grant org.fdroid.fdroid "android.permission.BLUETOOTH_ADMIN"
su -c pm grant org.fdroid.fdroid "android.permission.RECEIVE_BOOT_COMPLETED"
su -c pm grant org.fdroid.fdroid "android.permission.READ_EXTERNAL_STORAGE"
su -c pm grant org.fdroid.fdroid "android.permission.WRITE_EXTERNAL_STORAGE"
su -c pm grant org.fdroid.fdroid "android.permission.WRITE_SETTINGS"
su -c pm grant org.fdroid.fdroid "android.permission.NFC"
su -c pm grant org.fdroid.fdroid "android.permission.USB_PERMISSION"
su -c pm grant org.fdroid.fdroid "android.permission.WAKE_LOCK"
su -c pm grant org.fdroid.fdroid "android.permission.ACCESS_COARSE_LOCATION"
su -c pm grant org.fdroid.fdroid "android.permission.FOREGROUND_SERVICE"

# Установка разришений для F-Droid Privileged Extension
su -c pm grant org.fdroid.fdroid.privileged "android.permission.INSTALL_PACKAGES"
su -c pm grant org.fdroid.fdroid.privileged "android.permission.DELETE_PACKAGES"


# Отключение автозапуска service.sh
su -c mv $MODPATH/service.sh $MODPATH/service_sleep.sh
