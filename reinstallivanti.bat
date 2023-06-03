ping %1 -n 2
if %ERRORLEVEL% == 1 Exit /B 0
C:\PSTools\Psexec.exe \\%1 -c \\tech12\c$\PSTools\UninstallWinClient.exe /forceclean
TIMEOUT /T 200
:Pingtest
ping %1 -n 2
if %ERRORLEVEL% == 1 (goto :pingtest) else (
TIMEOUT /T 60
C:\PSTools\Psexec.exe \\%1 -c \\tech12\c$\PSTools\agent.exe
)
del /s /q \\%1\c$\users\sw_popkowski

