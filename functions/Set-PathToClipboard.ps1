function Set-PathToClipboard {
    [CmdletBinding()]
    param ()
    END {
        $clipText = (Get-Location).ToString() | Out-String -Stream
        Write-Host ("Writing value '{0}' to clipboard..." -f $clipText)
        $clipText | Set-Clipboard
    }
}