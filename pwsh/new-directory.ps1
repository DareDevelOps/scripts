# Create a new directory and cd to it
function   New-Directory {
    param (
        [Parameter(Mandatory = $true)][string] $directoryName

    )
    New-Item -Path . -Name $directoryName -ItemType Directory
    Set-Location $directoryName
} New-Alias -Name nd -Value New-Directory
