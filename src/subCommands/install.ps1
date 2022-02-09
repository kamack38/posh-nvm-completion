if (-not $subCommands) {
	$subCommands = [ordered] @{ }
}

$subCommands['install'] = [ordered] @{
	'lts'    = @{ };
	'latest' = @{ };
}
