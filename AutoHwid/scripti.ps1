function AutopilottiInformaatio {
    $name = "AutopilotHWID"
    Get-WindowsAutopilotInfo -OutputFile "D:\$($name).csv" #-Append
    
    # If running in the console, wait for input before closing.   
    #Get-WindowsAutopilotInfo -OutputFile "D:\AutopilotHwid.csv" -Append
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
}
catch {
    Write-Host "Script failed trying again."
    Start-Sleep -Seconds 1.0
    AutopilottiInformaatio
    <#Do this if a terminating exception happens#>
}
finally{
    PressAnyKey('Press any key to close window...')
}