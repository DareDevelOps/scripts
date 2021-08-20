$artifacts = $PSScriptRoot


New-Item -ItemType Directory -Path  @(
 "$artifacts\modules",
 "$artifacts\scripts"
)

New-Item -ItemType File -Path  @(
    "$artifacts\main.bicep",
    "$artifacts\README.md"
)