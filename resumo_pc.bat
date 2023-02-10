::Resumo_gera_log
echo off
date /T >> resumo_pc.log
time /T >> resumo_pc.log
systeminfo >> resumo_pc.log
echo Aguarde a janela fechar, log salvo no local do script.
timeout /T 10
exit