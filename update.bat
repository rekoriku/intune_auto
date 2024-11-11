SET Dir=%~dp0
SET HWID=%Dir%AutoHwid\
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %HWID%scripti.ps1 https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/AutoHwid/scripti.ps1";
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %HWID%AutoInstall.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/AutoHwid/AutoInstall.bat;
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %Dir%AUTO.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/AUTO.bat;
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %Dir%aktivoi.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/aktivoi.bat;