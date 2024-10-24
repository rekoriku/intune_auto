SET CurrentDir=%~dp0
SET HWID=%CurrentDir%AutoHwid\scripti.ps1
SET INSTALL=%CurrentDir%AutoHwid\AutoInstall.bat
Call %INSTALL%
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%HWID%'";