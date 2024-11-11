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
    AutopilottiInformaatio
    
    #PressAnyKey('Press any key to run script.')
}
catch {
    Write-Host "Script failed again"
    Start-Sleep -Seconds 1.0

    <#Do this if a terminating exception happens#>
}
finally {
    PressAnyKey('Press any key to close window...')
}