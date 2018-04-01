$global:profileFolder = Split-Path $profile -parent

Import-Module PSDirTag
Import-Module PSCode
Import-Module posh-vs
if (!(Test-Path env:DevEnvDir)) {Import-VisualStudioEnvironment}

set-alias vss ($env:DevEnvDir + "devenv.exe")

# Dot source profile functions
gci $profileFolder\functions | %{. $_.FullName}

