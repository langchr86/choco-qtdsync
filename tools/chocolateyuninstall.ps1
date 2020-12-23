
$programs = [environment]::GetFolderPath([environment+specialfolder]::ProgramFilesX86)
$uninstaller = "$programs/QtdSync/unins000.exe"
Write-Warning "$packageName will be uninstalled by calling: $uninstaller"

& "$uninstaller" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
