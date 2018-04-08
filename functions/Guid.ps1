function GetGuid {
    [System.Guid]::NewGuid().ToString()
}

function Set-GuidToClipboard {
    [CmdletBinding()]
    param ()
    END {
        $newGuid = GetGuid
        $clipText = $newGuid.ToString() | Out-String -Stream
        Write-Host ("Writing value '{0}' to clipboard..." -f $clipText)
        $clipText | Set-Clipboard
    }
}