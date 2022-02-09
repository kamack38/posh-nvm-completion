function Get-4thCompletions([string] $WordToComplete, [string] $Command, [string] $CommandSubPart) {
	if (-not $options) {
		. $PSScriptRoot\..\options.ps1
	}

	$searchBlock = { $_ -like "$WordToComplete*" }
	$completions = @()

	# Command option's values
	if ($options[$Command][$CommandSubPart]) {
		$optionValues = $options[$Command][$CommandSubPart]

		$completions += $optionValues | Where-Object $searchBlock | ForEach-Object {
			[System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
		}
	}

	return $completions
}
