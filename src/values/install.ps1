. $PSScriptRoot\..\utils.ps1

if (-not $commandValues) {
	$commandValues = [ordered] @{ }
}

$commandValues['install'] = {
	param ([string] $WordToComplete)

	$scriptNames = Get-NodeAvailableVersions | Where-Object {
		$_ -like "$WordToComplete*"
	}

	return $scriptNames
}
