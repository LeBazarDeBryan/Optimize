@echo off
title Discord Optimized - Felx
set "discordPath=%LocalAppData%\Discord"
cls
for /f "delims=" %%D in ('dir /b /ad "%discordPath%\app-*" /o-n') do (
    set "latestVersion=%%D"
    goto :found
)
cls
echo [ERREUR] Impossible de trouver le dossier Discord.
pause
exit

:found
set "discordExe=%discordPath%\%latestVersion%\Discord.exe"
if not exist "%discordExe%" (
    echo [ERREUR] Impossible de trouver Discord.exe dans "%discordExe%".
    pause
    exit
)
start "" "%discordExe%" --disable-gpu --disable-extensions --disable-dev-shm-usage --disable-accelerated-video-decode --disable-accelerated-video-encode --disable-gpu-compositing --memory-pressure-thresholds=1 --disable-smooth-scrolling --disable-v8-idle-tasks --disable-notifications --process-per-site --disable-logging --enable-low-end-device-mode --no-proxy-server --disable-translate --no-zygote --disable-webrtc-hw-decoding --enable-webrtc-stun-origin
echo [SUCCES]
exit