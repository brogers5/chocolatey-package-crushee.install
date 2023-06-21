$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerFileName = 'Crushee-v2.4.5-win-setup.exe'
$filePath = Join-Path -Path $toolsDir -ChildPath $installerFileName

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  file64         = $filePath
  softwareName   = 'Crushee*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyInstallPackage @packageArgs

#Remove installer binary post-install to prevent disk bloat
Remove-Item $filePath -Force -ErrorAction SilentlyContinue

#If installer binary removal fails for some reason, prevent an installer shim from being generated
if (Test-Path -Path $filePath) {
  Set-Content -Path "$filePath.ignore" -Value $null -ErrorAction SilentlyContinue
}
