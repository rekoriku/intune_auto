$serials = Import-Csv -Path D:\AutopilotHWID.csv -Header 'Device Serial Number' | Select-Object -Skip 1
#$P | Get-Member
$serials | Where-Object -Property TopicTitle -Like '*' | Out-String -Stream | Where-Object { $_.Trim().Length -gt 0 } | Out-file -FilePath 'D:\SERIALIT.txt'
#$serials | Where-Object { $_ } | Set-Content 'D:\SERIALIT.txt'