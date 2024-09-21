@ECHO OFF

taskkill/im radiosure.exe

cd stations

del -f *.rsd

certutil -urlcache -split -f "https://cld.pt/dl/download/fecd965e-645a-411d-ac80-faabbefc3f6c/latest.zip?download=true" "latest.zip"

7z.exe e "latest.zip"

del -f *.zip

cd /d “%USERPROFILE%\Desktop”
del RadioSure.lnk


cd %localappdata%\RadioSure
copy RadioSure.lnk "%USERPROFILE%\Desktop"
Radiosure.exe

exit
exit

