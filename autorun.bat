start "" https://laptop-updates.brave.com/latest/winx64
start "" https://www.intel.com/content/www/us/en/download-center/home.html
start "" https://guides.frame.work/Guide/Windows+10+Installation+on+the+Framework+Laptop+DIY+Edition/92#s453
start "" https://wiki.ameliorated.info/documentation_21H1
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
