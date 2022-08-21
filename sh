Hosted File:
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "@rdpbydeadpool" -Force)
Set-LocalUser -Name "Administrator" | Enable-LocalUser
Invoke-WebRequest http://bin.equinox.io/c/4VmDzA7iahb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "2Dgb0v5ima9Vz4MuMPC2MmBfDR0_3xLgEuhtewTmU8YzTEayM" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1
