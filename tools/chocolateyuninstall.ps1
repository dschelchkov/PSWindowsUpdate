$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= 'PSWindowsUpdate' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$dataDir = Join-Path (Split-Path $toolsDir) 'data'

$targetDir = "$Env:WinDir\System32\WindowsPowerShell\v1.0\Modules\$packageName"

if (Test-Path -PathType Container $targetDir)
{ Remove-Item "$targetDir\*"}
