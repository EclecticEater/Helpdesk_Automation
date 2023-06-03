for /F %%i in (machines.txt) do copy c:\Pstools\mozilla.ps1 \\%%i\c$\Windows\mozilla.ps1
psexec.exe @machines.txt powershell C:\Windows\mozilla.ps1 > mozilla.txt
for /F %%i in (machines.txt) do del \\%%i\c$\Windows\mozilla.ps1