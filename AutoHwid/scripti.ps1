function AutopilottiInformaatio {
    $name = "AutopilotHWID"
    Get-WindowsAutopilotInfo -OutputFile "D:\$($name).csv"
}

function PressAnyKey($message) {
    if ($Host.Name -eq "ConsoleHost") {
        Write-Host "$($message)"
        $Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
        $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
    }
}

    AutopilottiInformaatio
    Write-Host "run AUTO.bat again if csv gathering failed."
    PressAnyKey('Press any key to close window...')
