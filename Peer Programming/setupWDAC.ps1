function enableWDAC {
    $cipPath = "C:\Users\vagrant\Documents\CIpolicy.xml"
    Start-Process -FilePath "citool.exe" -ArgumentList "-policy $cipPath" -Wait -NoNewWindow
}
enableWDAC
testWDAC
resetWDAC