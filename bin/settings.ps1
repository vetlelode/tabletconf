adb devices
adb shell settings put system setup_wizard_has_run 100
adb shell settings put global install_non_market_apps 1
Write-Output "Allowing Non Market Apps"
adb shell settings put system screen_sleep 0
Write-Output "Disabling System Sleep"
adb shell settings put global bluethooth_on 0
Write-output "Disabling Bluethooth"
adb shell settings put global wifi_on 1
Write-Output "Disabling Sound effects"
adb shell settings put system sound_effects_enabled 0
Write-Output "Disabling haptic feedback"
adb shell settings put system haptic_feedback_enabled 0
Write-Output "Putting screen time out on max"
adb shell settings put system screen_off_timeout 10000000000
adb shell settings put global stay_on_while_plugged_in BATTERY_PLUGGED_AC
