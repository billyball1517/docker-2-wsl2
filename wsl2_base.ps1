dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi
.\wsl_update_x64.msi /passive
New-Item -path "HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate" -name "AU" -Force
New-ItemProperty -path "HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" -name "AllowMUUpdateService" -value "1" -type "DWORD" -Force
New-ItemProperty -path "HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" -name "NoAutoUpdate" -value "0" -type "DWORD" -Force