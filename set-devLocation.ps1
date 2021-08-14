$devLocation = Read-Host -Prompt 'Please enter demos or learn to set the preffered development path.'

if ($devLocation -eq 'demos') {
    Set-Location -Path 'C:\dev\demos'
} elseif ($devLocation -eq 'learn') {
    Set-Location -Path 'C:\dev\learn'
} else {
    Set-Location -Path 'C:\dev'
}