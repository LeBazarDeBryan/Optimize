@echo off
title Steam Optimized - Felx
set "SteamExePath=C:\Program Files (x86)\Steam\Steam.exe"
set "SteamArgs=-console -dev -nofriendsui -nofasthtml -nobigpicture -nointro -novid -disablehighdpi -vrdisable -nocrashmonitor -single_core -no-dwrite -cef-disable-sandbox -cef-disable-breakpad -cef-single-process -no-shared-textures -noshaders -nocloud -overridepackageurl -tcp -novideo"
if not exist "%SteamExePath%" (
    echo [ERREUR] Steam.exe introuvable à l'emplacement suivant : "%SteamExePath%"
    pause
    exit
)
echo [SUCCES] Lancement de Steam avec les arguments...
powershell -Command "Start-Process -FilePath '%SteamExePath%' -ArgumentList '%SteamArgs% %SteamURL%' -WindowStyle Minimize"
exit