for /F %%i in (machines.txt) do copy "c:\Pstools\Detect software.ps1" \\%%i\c$\Windows\software.ps1
psexec.exe @machines.txt powershell C:\Windows\software.ps1 > software.txt
for /F %%i in (machines.txt) do del \\%%i\c$\Windows\software.ps1