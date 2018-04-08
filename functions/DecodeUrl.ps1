function DecodeUrl($url) {
    [Reflection.Assembly]::LoadWithPartialName("System.Web") | Out-Null
    [System.Web.HttpUtility]::UrlDecode($url)
}