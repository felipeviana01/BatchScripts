::
:: Script for creating a CSV list with the files from a local folder, same path as script
:: Use case; generating lists for internal mass mailing 
::
@echo off
:: Displaying what will be done and where you are executing the script 
echo ###
echo ###
echo Este script vai gerar um arquivo CSV dos arquivos presentes nesta pasta.
echo %cd%
echo ###
echo ###
::
:: Timeout to confirm the action
echo ###
echo ###
timeout /T 10
::
:: Sending the full path to the csv, so it serve as reference
echo %cd%\> list.csv
:: Generating list excluding folders, system files and hidden files; Bare format; Order by name; Pipe to filter the script file and csv out o the list 
dir /aa-s-h /b /on | findstr /v /i "list.*$" >> list.csv
echo ###
echo ###
echo ### Lista gerada em %cd% ###
echo ###
echo ###
pause