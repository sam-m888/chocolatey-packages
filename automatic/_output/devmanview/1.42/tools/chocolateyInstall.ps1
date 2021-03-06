$packageName = 'devmanview'
$url = 'http://www.nirsoft.net/utils/devmanview.zip'
$checksum = 'bb5161ad0af46ea5932ea9bdbd881bd942bd0521'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/devmanview-x64.zip'
$checksum64 = '32ae6767a46c25e49a17defae6a8599359893876'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null