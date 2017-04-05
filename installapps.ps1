param([string]$lokasjon="Finnsnes")
Write-Output "Location is: $lokasjon"
adb devices
adb shell settings put global install_non_market_apps 1
Write-Output "Allowing Non Market Apps"
adb shell settings put system screen_sleep 0
Write-Output "Disabling System Sleep"
adb shell settings put global bluethooth_on 0
Write-output "Disabling Bluethooth"
adb shell settings put global wifi_on 1
Write-Output "Disabling Sound Effects"
adb shell settings put system sound_effects 0
adb shell settings put global device_name PB-$lokasjon
Write-Output "Setting device name to PB-$lokasjon"
Write-Output "Installing apps:"
adb install -r apk\com.teamviewer.host.market.apk
adb install -r apk\app-debug.apk
adb install -r '.\apk\Kiosk Browser Lockdown_v2.5.6_apkpure.com.apk'
Write-Output "Done."
adb shell am start -n com.steinwurf.adbjoinwifi/com.steinwurf.adbjoinwifi.MainActivity -e ssid FF-Gjest
Write-Output "Wifi configured, You should reboot to get all the settings in"
adb push .\kioskbrowserconfig.xml /storage/sdcard0/kioskbrowserconfig.xml
Write-Output "Pushing kiosk config"