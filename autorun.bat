start "" https://laptop-updates.brave.com/latest/winx64
start "" https://www.intel.com/content/www/us/en/download-center/home.html
start "" https://guides.frame.work/Guide/Windows+10+Installation+on+the+Framework+Laptop+DIY+Edition/92#s453
start "" https://wiki.ameliorated.info/documentation_21H1
start "" https://github.com/clsid2/mpc-hc/releases
start "" https://store.steampowered.com/about/
wmic useraccount where name='user' rename kes
net user kes *
net user Administrator *
net localgroup administrators kes /add
PowerShell.exe -Command "ipmo international"
echo $LanguageList = Get-WinUserLanguageList
echo $LanguageList
echo $LanguageList.Add("zh-CN")
echo $LanguageList.Add("ja-JP")
echo Set-WinUserLanguageList $LanguageList
PowerShell.exe
control schedtasks
echo HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\ProfileList.
mklink /j C:\Users\kes\scoop\apps\7zip\current C:\Users\kes\scoop\apps\7zip\19.00
mklink /j C:\Users\kes\scoop\apps\git\current C:\Users\kes\scoop\apps\git\2.32.0.windows.2
mklink /j C:\Users\kes\scoop\apps\windows-terminal\current C:\Users\kes\scoop\apps\windows-terminal\1.9.1942.0
mklink /j "C:\Program Files (x86)\Steam\steamapps" "C:\SteamLibrary\steamapps"

takeown /f C:\Windows\Web\Screen\*.jpg
icacls C:\Windows\Web\Screen\*.jpg /reset
takeown /f C:\Windows\Web\Screen\*.png
icacls C:\Windows\Web\Screen\*.png /reset
takeown /f C:\Windows\Web\Wallpaper\Windows\*.jpg
icacls C:\Windows\Web\Wallpaper\Windows\*.jpg /reset
takeown /f C:\Windows\Web\4K\Wallpaper\Windows\*.jpg
icacls C:\Windows\Web\4K\Wallpaper\Windows\*.jpg /reset
copy img100.jpg C:\Windows\Web\Screen\ /Y 
copy img103.png C:\Windows\Web\Screen\ /Y 
copy img0.jpg C:\Windows\Web\Wallpaper\Windows\ /Y
copy img0_*.jpg C:\Windows\Web\4K\Wallpaper\Windows\ /Y
copy *.bmp C:\Windows\Web\Wallpaper\Windows\ /Y 
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Windows\Web\Wallpaper\Windows\ame_wallpaper_1440.bmp /f 
start RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

:: Delete Cache
takeown /f C:\ProgramData\Microsoft\Windows\SystemData 
icacls C:\ProgramData\Microsoft\Windows\SystemData /reset 
takeown /f C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18 
icacls C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18 /reset 
takeown /f C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18\ReadOnly 
icacls C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18\ReadOnly /reset 
takeown /f C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18\ReadOnly\LockScreen_Z 
icacls C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18\ReadOnly\LockScreen_Z /reset 
takeown /f C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18\ReadOnly\LockScreen_Z\*.jpg 
icacls C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18\ReadOnly\LockScreen_Z\*.jpg /reset
del C:\ProgramData\Microsoft\Windows\SystemData\S-1-5-18\ReadOnly\LockScreen_Z\*.jpg /f /q 
