@echo off
:: Remove WSUS - 1.0
:: Script baseado no artigo Microsoft https://support.microsoft.com/pt-br/help/971058/how-do-i-reset-windows-update-components

echo Script para redefinicao do Windows Update
echo ###
echo ###
echo ###
echo ###
echo ###

:: Mudando o diretorio para a System32
echo  Mudando o diretorio para a System32
cd /d %windir%\system32
echo ###
echo ###
echo ###
echo ###
echo ###
:: Parando os servicos relacionados ao Windows Update
echo  Parando os servicos relacionados ao Windows Update
net stop bits /Y
net stop wuauserv /Y
net stop appidsvc /Y
net stop cryptsvc /Y
echo ###
echo ###
echo ###
echo ###
echo ###
:: Excluindo os arquivos qmgr*.dat
echo  Excluindo os arquivos qmgr*.dat
DEL "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat"
echo ###
echo ###
echo ###
echo ###
echo ###
:: Excluindo as entradas de registro que configuram o Windows Update
echo  Excluindo as entradas de registro que configuram o Windows Update
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" /v WUServer /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" /v WUStatusServer /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" /v TargetGroupEnabled /F 
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" /v TargetGroup /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" /v ElevateNonAdmins /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" /v DisableWindowsUpdateAccess /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" /v AcceptTrustedPublisherCerts /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v NoAutoUpdate /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v UseWUServer /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v DetectionFrequencyEnabled /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v DetectionFrequency /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v RebootRelaunchTimeoutEnabled /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v RebootRelaunchTimeout /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v AutoInstallMinorUpdates /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v NoAutoRebootWithLoggedOnUsers /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v AUOptions /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v ScheduledInstallDay /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v ScheduledInstallTime /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v RebootWarningTimeoutEnabled /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v RebootWarningTimeout /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v RescheduleWaitTimeEnabled /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\windows\WindowsUpdate\AU" /v RescheduleWaitTime /F
echo ###
echo ###
echo ###
echo ###
echo ###
:: Renomeando as copias de backup das pastas de distribuicao de software
echo  Renomeando as copias de backup das pastas de distribuicao de software
REN %systemroot%\SoftwareDistribution SoftwareDistribution.bak
REN %Systemroot%\System32\Catroot2. catroot2.bak
echo ###
echo ###
echo ###
echo ###
echo ###
:: Redefinindo o servico BITS e o servico Windows Update
echo  Redefinindo o servico BITS e o servico Windows Update
sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
echo ###
echo ###
echo ###
echo ###
echo ###
:: Registrando os arquivos BITS e o Windows Update
echo  Registrando os arquivos BITS e o Windows Update
regsvr32.exe /s atl.dll
regsvr32.exe /s urlmon.dll
regsvr32.exe /s mshtml.dll
regsvr32.exe /s shdocvw.dll
regsvr32.exe /s browseui.dll
regsvr32.exe /s jscript.dll
regsvr32.exe /s vbscript.dll
regsvr32.exe /s scrrun.dll
regsvr32.exe /s msxml.dll
regsvr32.exe /s msxml3.dll
regsvr32.exe /s msxml6.dll
regsvr32.exe /s actxprxy.dll
regsvr32.exe /s softpub.dll
regsvr32.exe /s wintrust.dll
regsvr32.exe /s dssenh.dll
regsvr32.exe /s rsaenh.dll
regsvr32.exe /s gpkcsp.dll
regsvr32.exe /s sccbase.dll
regsvr32.exe /s slbcsp.dll
regsvr32.exe /s cryptdlg.dll
regsvr32.exe /s oleaut32.dll
regsvr32.exe /s ole32.dll
regsvr32.exe /s shell32.dll
regsvr32.exe /s initpki.dll
regsvr32.exe /s wuapi.dll
regsvr32.exe /s wuaueng.dll
regsvr32.exe /s wuaueng1.dll
regsvr32.exe /s wucltui.dll
regsvr32.exe /s wups.dll
regsvr32.exe /s wups2.dll
regsvr32.exe /s wuweb.dll
regsvr32.exe /s qmgr.dll
regsvr32.exe /s qmgrprxy.dll
regsvr32.exe /s wucltux.dll
regsvr32.exe /s muweb.dll
regsvr32.exe /s wuwebv.dll
echo ###
echo ###
echo ###
echo ###
echo ###
:: Redefinindo Winsock e Proxy
echo  Redefinindo Winsock e Proxy
netsh winsock reset
netsh winhttp reset proxy
echo ###
echo ###
echo ###
echo ###
echo ###
:: Reiniciando os servicos relacionados ao Windows Update
echo  Reiniciando os servicos relacionados ao Windows Update
net start bits /Y
net start wuauserv /Y
net start appidsvc /Y
net start cryptsvc /Y
echo ###
echo ###
echo ###
echo ###
echo ###
:: Reiniciando o computador
echo  Reiniciando o computador
shutdown -r -f -t 15

:: FIM