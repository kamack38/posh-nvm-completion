if (-not $options) {
	$options = [ordered] @{ }
}

# Options for `nvm use`
$options['use'] = [ordered] @{
	'64' = @();
	'32' = @();
}
