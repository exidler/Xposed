adb shell "su -c 'mount -o remount,rw /system'"
adb push app_process_xposed_sdk18 /data/local/tmp/

adb shell "su -c 'rm /system/bin/app_process; cp /data/local/tmp/app_process_xposed_sdk18 /system/bin/app_process'"
adb shell "su -c 'chmod 0755 /system/bin/app_process'"
adb shell "su -c 'chown 0:1000 /system/bin/app_process'"
adb shell "su -c 'rm /data/local/tmp/app_process_xposed_sdk18; sync'"
pause