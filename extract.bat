SET dir=%~dp0
SET extract=%dir%AutoHwid\extract.ps1
Call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%extract%'";