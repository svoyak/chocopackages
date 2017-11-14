$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.devart.com/dbforge/sql/studio/dbforgesql55exp.exe' 
$url64      = '' 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'dbforgesqlstudioexp*' 
  checksum      = ''
  checksumType  = 'sha256' 
  checksum64    = ''
  checksumType64= 'sha256' 
  silentArgs    = "/verysilent" 
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs 
