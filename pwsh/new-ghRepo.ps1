<#
.SYNOPSIS
Automatically create a generic Github Repo.
.DESCRIPTION
.NOTES
.EXAMPLE

#>

$repoName = read-host -Prompt "Provide a Repo name"
$repoURI = Read-Host -Prompt 'Please enter the your Github repository name'


New-Item -Path . -Name $repoName -ItemType Directory
Set-Location -Path $repoName

git init .
gh repo create $repoName -y -l MIT --public
git remote add $repoName main $repoURI + \$repoName

new-item -Path . -Name README.MD -ItemType File

git add *
git commit -m 'Initial commit.'