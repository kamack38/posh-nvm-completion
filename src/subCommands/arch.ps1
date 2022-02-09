if (-not $subCommands) {
	$subCommands = [ordered] @{ }
}

$subCommands['arch'] = [ordered] @{
	'32' = @{ };
	'64' = @{ };
}
