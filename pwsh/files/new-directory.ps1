# Create a new directory and cd to it
function   New-Directory {
    [CmdletBinding()]
    [Alias("nd")]
    param (
        [Parameter(Mandatory = $true)][string] $directoryName

    )
    New-Item -Path . -Name $directoryName -ItemType Directory
    Set-Location $directoryName
}