<#   VARIABLES   #>
$lokasjon = Read-Host "Lokasjon?"
$wifipass = Read-Host "Wifi passord?"
Write-Output "Lokasjon er: $lokasjon"
Write-Output "Passord er: $wifipass"

<# Settings #>
powershell.exe .\bin\settings.ps1
adb shell settings put global device_name PB-$lokasjon
Write-Output "Setting device name to PB-$lokasjon"
Write-output "Done with settings"
<# Install apps #>
powershell.exe .\bin\installer.ps1
Write-Output "Done with installing apps"
adb push kioskbrowserconfig.xml /storage/sdcard0/kioskbrowserconfig.xml
<# Configure Wifi #>
adb shell am start -n com.steinwurf.adbjoinwifi/com.steinwurf.adbjoinwifi.MainActivity -e ssid Ageto -e password_type WPA -e password $wifipass

