. $PSScriptRoot\..\utils.ps1

if (-not $commandValues) {
	$commandValues = [ordered] @{ }
}

$commandValues['uninstall'] = {
	param ([string] $WordToComplete)

	$scriptNames = Get-NvmVersions | Where-Object {
		$_ -like "$WordToComplete*"
	}

	return $scriptNames
}
