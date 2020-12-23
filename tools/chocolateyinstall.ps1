
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/qtdsync/files/v0.6/QtdSync_v0.6.20beta.exe/download'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'qtdsync*'

  checksum      = '756B003815B06922A29C042B51AE3D8571E3B107270263D39D2F8C508D5C7868'
  checksumType  = 'sha256'

  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
