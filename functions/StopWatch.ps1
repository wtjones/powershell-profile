function StopWatch($limitSeconds = $null) {
    $sw = [System.Diagnostics.Stopwatch]::startNew()
    while ($limitSeconds -eq $null -or $sw.ElapsedMilliseconds -le $limitSeconds * 1000) {
        Start-Sleep -m 50
        Write-Host ("`rElapsed: {0}" -f $sw.Elapsed) -NoNewline
    }
    Write-Host ("`r`nDone." -f $sw.Elapsed)
}