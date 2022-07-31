function Rename-Files {
	<#
	.SYNOPSIS
	Converts files with a date for a filename to follow a 'M dd yyyy' format.

	.DESCRIPTION
	Renames files in a folder, expects filenames to be in a date format.
	Takes a path parameter (defaults to current path)
	Using the recurse flag will rename all files in subfolders.

	.PARAMETER Path
	Path of folder containing files to act upon.

	.PARAMETER Recurse
	Flag to act on subfolders

	.INPUTS
	None. You cannot pipe objects to Rename-Files

	.OUTPUTS
	None.

	.EXAMPLE
	PS> Rename-Files

	.EXAMPLE 
	PS> Rename-Files -Path C:\Users\Username\Documents\pdfs -Recurse

	#>

	[CmdletBinding()] PARAM(
		[Parameter()] $Path = '.',
		$Recurse = $false	
		)

	$Files = Get-Childitem -Path $Path -Recurse:$Recurse
	ForEach($File in $Files) {
		try {
			$Date = $File.BaseName | Get-Date -Format 'M dd yyyy' -ErrorAction Stop
		} catch { continue }

		$Filename = ($File.BaseName | Get-Date -Format 'M dd yyyy') + $File.Extension
		Rename-Item -Path $File.PsPath $Filename -Force
	}

}
		
