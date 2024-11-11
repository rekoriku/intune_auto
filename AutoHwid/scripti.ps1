function AutopilottiInformaatio {
    $name = "AutopilotHWID"
    Get-WindowsAutopilotInfo -OutputFile "D:\$($name).csv" #-Append
}

function PressAnyKey($message) {
    if ($Host.Name -eq "ConsoleHost") {
        Write-Host "$($message)"
        $Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
        $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
    }
}

try {
    Write-Host "Script succeeded"
    AutopilottiInformaatio
    #PressAnyKey('Press any key to run script.')
}
catch {
    Write-Host "Script failed, trying again"
    Start-Sleep -Seconds 5.0
    try {
        Write-Host "Script succeeded"
        AutopilottiInformaatio
    }
    catch {
        Write-Host "Script failed again, try running AUTO.bat again"
    }
}
finally {
    PressAnyKey('Press any key to close window...')
}