@echo off
:: Ping loja - 1.0 Rev.09
echo Script para log de ping rede interna e externa
echo #########################################################
:LOOPSTART
:: Ping do modem VIVO
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingModem.txt
date /T >> C:\ping_loja\log_L1065A_pingModem.txt
time /T >> C:\ping_loja\log_L1065A_pingModem.txt
ping -n 10 192.168.15.1 >> C:\ping_loja\log_L1065A_pingModem.txt
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingModem.txt
:: Ping da maquina B
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingMaqB.txt
date /T >> C:\ping_loja\log_L1065A_pingMaqB.txt
time /T >> C:\ping_loja\log_L1065A_pingMaqB.txt
ping -n 10 172.20.2.226 >> C:\ping_loja\log_L1065A_pingMaqB.txt
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingMaqB.txt
:: Ping do proxy
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingProxy.txt
date /T >> C:\ping_loja\log_L1065A_pingProxy.txt
time /T >> C:\ping_loja\log_L1065A_pingProxy.txt
ping -n 10 10.0.169.32 >> C:\ping_loja\log_L1065A_pingProxy.txt
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingProxy.txt
:: Ping da internet
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingWeb.txt
date /T >> C:\ping_loja\log_L1065A_pingWeb.txt
time /T >> C:\ping_loja\log_L1065A_pingWeb.txt
ping -n 10 8.8.8.8 >> C:\ping_loja\log_L1065A_pingWeb.txt
echo -------------------------------------------- >> C:\ping_loja\log_L1065A_pingWeb.txt
::
GOTO LOOPSTART