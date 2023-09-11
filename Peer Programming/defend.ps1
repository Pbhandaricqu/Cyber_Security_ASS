function testWDAC{ #unauthorized file
    Start-Process -FilePath "C:\Users\vagrant\Documents\BloatyNosy.exe" -Wait
    $appName = "BloatyNosy.exe"

    $isRunning = Get-Process | Where-Object { $_.ProcessName -eq $appName }

    if ($isRunning) {
        Write-Host "$appName running. WDAC not blocking app"
    } else {
        Write-Host "$appName not running. WDAC blocking app"
    }
}
testWDAC

    