function Update-File() {
    <#
        .SYNOPSIS
        Attempts to emulate touch from the unix shell.
        .DESCRIPTION
        Create an empty file or bump the date of exist.
        .PARAMETER FileName
        The file to touch.
        .EXAMPLE
        Update-File myfile.txt
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string] $FileName
    )
    PROCESS {
        if(Test-Path $FileName) {
            (Get-ChildItem $FileName).LastWriteTime = Get-Date
        } else {
            $null | Out-File $FileName -Encoding ascii
        }
    }
}