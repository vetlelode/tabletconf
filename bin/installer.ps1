Write-Output "Installing apps:"
adb install  ./apk/com.teamviewer.host.market.apk
adb install  ./apk/app-debug.apk
adb install  './apk/Kiosk Browser Lockdown_v2.5.6_apkpure.com.apk'
Write-Output "Pushing Kiosk Browser Config"
Write-Output "Done."
Write-output $lokasjon