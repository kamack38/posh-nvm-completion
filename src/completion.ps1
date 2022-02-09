Register-ArgumentCompleter -Native -CommandName @('nvm', 'nvm.exe') -ScriptBlock {
	param($wordToComplete, $commandAst, $cursorPosition)

	. $PSScriptRoot\lib.ps1
	. $PSScriptRoot\utils.ps1

	# $searchBlock = { $_ -like "$wordToComplete*" }
	$completions = @()

	# Main command
	$command = if ($commandAst.CommandElements[1]) { $commandAst.CommandElements[1].Value } else { $null }
	# Command's value or sub-command
	$commandSubPart = if ($commandAst.CommandElements[2]) { $commandAst.CommandElements[2].Value } else { $null }
	# Sub-command's option
	$command2ndSubPart = if ($commandAst.CommandElements[3]) { $commandAst.CommandElements[3].Value } else { $null }
	# Command's option value of main command
	$command3rdSubPart = if ($commandAst.CommandElements[4]) { $commandAst.CommandElements[4].Value } else { $null }

	# If word to complete is equal to command part, suggest all commands & options of `install` command
	if (Compare-CommandElement $command $wordToComplete) {
		$completions += Get-1stCompletions -WordToComplete $wordToComplete
	}
	# If word to complete is equal to command sub-part, suggest command's values and sub-commmands and command's options
	elseif (Compare-CommandElement $commandSubPart $wordToComplete) {
		$completions += Get-2ndCompletions -WordToComplete $wordToComplete -Command $command
	}
	# If word to complete is equal to second sub-part,
	# suggest main command option's values or sub-command's options
	elseif (Compare-CommandElement $command2ndSubPart $wordToComplete) {
		$completions += Get-3rdCompletions -WordToComplete $wordToComplete -Command $command -CommandSubPart $commandSubPart
	}

	elseif (Compare-CommandElement $command3rdSubPart $wordToComplete) {
		$completions += Get-4thCompletions -WordToComplete $wordToComplete -Command $command -CommandSubPart $command2ndSubPart
	}

	return $completions
}
