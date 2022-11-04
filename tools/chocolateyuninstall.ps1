$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'Crushee*'
  fileType       = 'EXE'
  validExitCodes = @(0)
  silentArgs     = '/currentuser /S'
}

[array] $keys = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($keys.Count -eq 1) {
  $keys | ForEach-Object {
    $packageArgs['file'] = $($_.UninstallString.TrimEnd('/currentuser'))
    Uninstall-ChocolateyPackage @packageArgs
  }
} elseif ($keys.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($keys.Count -gt 1) {
  Write-Warning "$($keys.Count) matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $keys | ForEach-Object {Write-Warning "- $($_.DisplayName)"}
}
