if (-not $subCommands) {
	$subCommands = [ordered] @{ }
}

$subCommands['use'] = [ordered] @{
	'lts'    = @{ };
	'latest' = @{ };
	'newest' = @{ };
}