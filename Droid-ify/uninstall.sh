resetprop -w sys.boot_completed 0

su -c pm clear com.looker.droidify
su -c pm clear com.android.vending
su -c pm clear com.google.android.gms
su -c pm clear com.google.android.gsf

su -c pm uninstall com.looker.droidify
su -c pm uninstall com.android.vending
su -c pm uninstall com.google.android.gms
su -c pm uninstall com.google.android.gsf
