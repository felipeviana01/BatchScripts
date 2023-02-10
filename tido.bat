#reg delete HKEY_CURRENT_USER\Network /f

net use /delete g:
net use /delete m:
net use /delete p:
net use /delete r:
net use /delete s:

net use M: \\ocomtz-svfsvp03.cgmp-osa.com.br\Multimidia
net use P: \\ocomtz-svfsvp03.cgmp-osa.com.br\Publico
net use R: \\ocomtz-svfsvp03.cgmp-osa.com.br\Restrito
net use S: \\ocomtz-svfsvp03.cgmp-osa.com.br\Sistemas
net use T: \\ocomtz-svfsvp03.cgmp-osa.com.br\Softwares
net use Y: \\OCOMTZ-SVSCNP01\TI /USER:SCANNER\a a

copy \\ocomtz-svfsvp03.cgmp-osa.com.br\sistemas\gol.lnk /Y "%USERPROFILE%\Desktop"

if exist "%PROGRAMFILES%\PEDGIO~1" copy /n /y "p:\matacont.dll" "%PROGRAMFILES%\PEDGIO~1\matacont.dll"

atualiza.bat


'%logonserver%\netlogon\MICROSIGA-ATUALIZA.bat'


