function Get-FlattenedFiles() {
    [CmdletBinding()]
    param (
        [string] $path = (Get-Location).path
    )
    PROCESS {
      Get-ChildItem -Recurse $path | ?{$_.PsIsContainer -eq $false} | 
        Select-Object FullName, LastWriteTime
    }
}