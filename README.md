The script can be executed within the domain.

1.GPO :
Add the script as a Logon script or Startup script in GPO
Make sure that PowerShell Execution Policy allows Executing the Scripts on the Clients.(RemoteSigned or Bypass)

2.Remote PowerShell + AD:
You can Take all of PC names from Active Directory and Execute the script on all of them :


Save it as a .ps1 file and beware of this :
It is possible that your Powershell doesn't gives the permission for executing the scripts. Run the Following command only once as Administrator:
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
or if you are in the domain and you want to run it permanently :
powershell -ExecutionPolicy Bypass -File .\Send-MessageToClient.ps1
