if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
echo off
cls
title Conectando ao host: DESKSD0027
cmd /c "C:\Program Files (x86)\DameWare Development\DameWare Mini Remote Control 7.5\DWRCC.exe" -c -h -m:192.168.70.157