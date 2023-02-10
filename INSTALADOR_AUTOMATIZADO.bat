
cd \
@echo off
cls
echo ###
echo ###
echo ###
echo ###
echo ###
echo ### INSTALANDO NOVA VERSAO, AGUARDE !!! ###
echo ###
echo ###

echo off

CD C:\Suporte\TeamViewer12

REGEDIT /S C:\Suporte\TeamViewer12\REGEDIT_LOJAS.reg

TeamViewer_Host-idcjrn2r9b.msi /QUIET

TASKKILL -F -IM TEAMVIEWER.EXE
TASKKILL -F -IM TEAMVIEWER_SERVICE.EXE

echo ###
echo ###
echo ### APLICANDO PRE POLITICA ###
echo ###
echo ###
echo ###

echo off

REGEDIT /S C:\Suporte\TeamViewer12\REGEDIT_LOJAS.reg

echo ###
echo ###
echo ### AGUARDE !!! ###
echo ###
echo ### NAO CANCELE !!! ###
echo ###
echo ###

TIMEOUT /T 120 /NOBREAK
echo ###
echo ###
echo off
echo ###
echo ###
echo ### ASSOCIANDO CONTA ###
echo ###
echo ###

@echo off
set https_proxy=10.0.169.32:3128
set http_proxy=10.0.169.32:3128
TeamViewer_Assignment.exe -apitoken 2214361-0LYAkwx1Rd4LXKUPVEby -datafile ${ProgramFiles}\TeamViewer\AssignmentData.json
TeamViewer_Assignment.exe -apitoken 2214361-0LYAkwx1Rd4LXKUPVEby -datafile ${ProgramFiles(x86)}\TeamViewer\AssignmentData.json


echo ###
echo ###
echo ### REINICIANDO TEAMVIEWER ###
echo ###
echo ###

NET STOP TeamViewer

TASKKILL -F -IM TEAMVIEWER.EXE
TASKKILL -F -IM TEAMVIEWER_SERVICE.EXE

NET START TeamViewer


echo ###
echo ###
echo ### INSTALACAO CONCLUÍDA, PRESSIONE ENTER PARA SAIR ###
echo ###
echo ###
pause
