$Trigger = New-ScheduledTaskTrigger -Daily -At 3am
$Action = New-ScheduledTaskAction -Execute “C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe” -Argument '-NoProfile -ExecutionPolicy Bypass -File "C:\Script\RWB.ps1"'
$User = "NT AUTHORITY\SYSTEM"
$Description = "Powershell Script"
Register-ScheduledTask -Action $Action -TaskName "PowerShell Script" -Trigger $Trigger -User $User -Description $Description -Force -RunLevel Highest
