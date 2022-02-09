function Get-3rdCompletions([string] $WordToComplete, [string] $Command, [string] $CommandSubPart) {
	if (-not $options) {
		. $PSScriptRoot\..\options.ps1
	}

	$searchBlock = { $_ -like "$WordToComplete*" }
	$completions = @()

	# Command option's values
	if ($options[$Command]) {
		$completions += $options[$Command].Keys | Where-Object $searchBlock | ForEach-Object {
			[System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterName', $_)
		}
	}

	return $completions
}
