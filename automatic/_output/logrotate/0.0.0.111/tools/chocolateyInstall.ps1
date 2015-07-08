$packageName = 'LogRotate'
$installerType = 'msi'
$url = 'http://sourceforge.net/projects/logrotatewin/files/logrotateSetup.msi/download' # download url
$silentArgs = '/quiet'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes