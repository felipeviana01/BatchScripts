:: DELETA SUBPASTAS
for /f "delims=" %%a in ('dir /ad /s /b %TEMP%') do (
   RD /s /q "%%a"
)

:: DELETA ARQUIVOS NA PASTA
DEL /F/S/Q %TEMP%\*.*