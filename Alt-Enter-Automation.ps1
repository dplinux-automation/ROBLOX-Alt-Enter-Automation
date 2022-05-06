#Variable names
 
$user = "Per-a" #change to your user <--------
$RobloxVersion = "C:\Users\$user\AppData\Local\Roblox\Versions"
$RobloxVersionLatest = Get-ChildItem -Directory -Path $RobloxVersion | Sort-Object LastWriteTime -Descending | Select-Object -first 1
$ClientSettingLocation = $RobloxVersion + "\" + $RobloxVersionLatest.Name


#Creation of Clientsettings and ClientAppSettings.json

try {

New-item -ItemType Directory -Path $ClientSettingLocation -Name ClientSettings
$ClientSettingLocation = $RobloxVersion + "\" + $RobloxVersionLatest.Name +"\" + "ClientSettings"
New-item -ItemType File -Path $ClientSettingLocation -Name ClientAppSettings.json -Value '{"FFlagHandleAltEnterFullscreenManually":"False"}'}

catch { "An error occurred. Make sure to change your user at line 2" }


