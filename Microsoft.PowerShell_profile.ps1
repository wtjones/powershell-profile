$global:profileFolder = Split-Path $profile -parent

# Modules
Import-Module PSDirTag
Import-Module PSCode
Import-Module posh-vs
if (!(Test-Path env:DevEnvDir)) {Import-VisualStudioEnvironment}

# Dot source profile functions
gci $profileFolder\functions | %{. $_.FullName}


# Aliases
Set-Alias touch Update-File
Set-Alias iis RunIISManager
set-alias vss ($env:DevEnvDir + "devenv.exe")
