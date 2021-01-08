@echo off
mode 67,25
title Youtube pinger
echo off
cls
echo.
chcp 65001
cls
type ytlogo.py
echo.
echo.
echo.
set /p IP=[40;37m[[40;36mYT[40;37m] Insert IP: 
if %IP% == exit start Laika Multi Tool.bat & exit
echo ========================
:ping
PING -n 1 %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto sub
IF NOT ERRORLEVEL 1 goto rcc
:sub
echo  [40;37m[[40;31mYT[40;37m] [41;37m%IP%[40;37m IS [40;31mOFFLINE
echo.
goto ping
:rcc
echo [40;37m[[40;31mYT[40;37m] [40;37m%IP% IS [40;32mONLINE
echo.
goto ping