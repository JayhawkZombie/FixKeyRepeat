@echo off
set rate=25
set delay=0
call :SetConfig D:\Scripts\OnPowerOn.ini rate
call :SetConfig D:\Scripts\OnPowerOn.ini delay
mode con: rate=%rate% delay=%delay%

:SetConfig
for /f "tokens=1,2 delims==" %%a in (%~1) do if %%a==%~2 set %~2=%%b 
goto :eof