@echo off

:login
set /p user=Insert User^>
if %user% == root goto password
goto badlogin

:password
set /p password=Insert Password^>
if %password% == root goto main
goto badlogin

:badlogin
color 04
echo Wrong login!
exit

:good
color 0a
echo Good Login!
echo Redirecting!
goto main

:main 
cls
chcp 65001
cls
type ytlogo.py
echo [1] To open notepad
echo [2] To open pinger
echo [3] To open chrome

:choosemain
set /p main=Choose^>^>
if %main% == 1 goto notepad
if %main% == 2 goto pinger
if %main% == 3 goto chrome
echo Choose something! & goto choosemain

:pinger
start Pinger.bat
echo Pinger Started! 
goto choosemain

:chrome
start chrome.exe
echo Chrome Started! 
goto choosemain

:notepad
start notepad.exe
echo Notepad Started!
goto choosemain