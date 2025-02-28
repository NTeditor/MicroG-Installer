resetprop -w sys.boot_completed 0

su -c pm clear com.android.vending
su -c pm clear com.google.android.gms
su -c pm clear com.google.android.gsf
su -c pm clear org.fdroid.fdroid
su -c pm clear org.fdroid.fdroid.privileged

su -c pm uninstall com.android.vending
su -c pm uninstall com.google.android.gms
su -c pm uninstall com.google.android.gsf
su -c pm uninstall org.fdroid.fdroid
su -c pm uninstall org.fdroid.fdroid.privileged
