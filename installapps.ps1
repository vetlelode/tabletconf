adb devices
adb shell settings put global install_non_market_apps 1
adb shell settings put system screen_sleep 0
adb shell settings put global wifi_on 1
adb shell settings put global device_name PB-Finnsnes

adb install apk\com.teamviewer.host.market.apk
adb install apk\app-debug.apk
adb install '.\apk\Kiosk Browser Lockdown_v2.5.6_apkpure.com.apk'
adb reboot

Start-Sleep -s 30

adb shell am start -n com.steinwurf.adbjoinwifi/com.steinwurf.adbjoinwifi.MainActivity -e ssid FF-Gjest