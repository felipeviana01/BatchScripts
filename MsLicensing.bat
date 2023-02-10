@echo off
::Fix MsLicensing x.0 rev 00
:: IN DEVELOPMENT
::Script baseado no procedimento em https://support.microsoft.com/pt-br/help/187614/removing-terminal-server-licenses-from-an-rdp-client
echo #########################################################
echo Script para corrigir problemas no terminal 
echo #########################################################

REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing /f && REGEDIT /S %CD%\msLicensing.reg


