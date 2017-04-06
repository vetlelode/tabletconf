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