if ($False -eq (Test-Path $PROFILE)) {
	New-Item $PROFILE -Force
}
Add-Content $PROFILE -Value (Get-Content ./Rename-Files.ps1)
Add-Content $PROFILE -Value 'Set-Alias -Name rf -Value Rename-Files'
. $PROFILE
