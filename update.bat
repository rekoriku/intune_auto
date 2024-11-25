SET Dir=%~dp0
SET HWID=%Dir%AutoHwid\

if not exist %Dir%AutoHwid (
    mkdir %Dir%AutoHwid
    echo created %Dir%AutoHwid
)

Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %HWID%scripti.ps1 https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/AutoHwid/scripti.ps1";
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %HWID%AutoInstall.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/AutoHwid/AutoInstall.bat;
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %HWID%extract.ps1 https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/AutoHwid/extract.ps1;
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %Dir%AUTO.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/AUTO.bat;
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %Dir%aktivoi.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/aktivoi.bat;
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %Dir%extract.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/extract.bat;
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "wget -O %Dir%update.bat https://raw.githubusercontent.com/rekoriku/intune_auto/refs/heads/main/update.bat;