if (-not $options) {
	$options = [ordered] @{ }
}

# Options for `nvm install`
$options['install'] = [ordered] @{
	'64'         = @('--insecure');
	'32'         = @('--insecure');
	'all'        = @('--insecure');
	'--insecure' = @();
}
