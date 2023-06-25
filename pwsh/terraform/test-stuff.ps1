$createDir = Read-Host -Prompt "Do you require a nested sub-module Y or N?"

if ($createDir -eq 'Y' ) {
    New-Item -Path . -Name modules -ItemType Directory
}