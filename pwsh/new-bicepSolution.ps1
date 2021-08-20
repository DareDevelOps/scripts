<#
.SYNOPSIS
Creates a Bicep solution and Associated Github repository
.DESCRIPTION
This script is to create all the basic components for a Github based Bicep workflow.
It creates the following components
- main.bicep file
- modules folder
- scripts folder
- README.md file
It also initialises a local git repository and then creates a remote repository on Github.
.NOTES
Author: Drew Burt
Created: 7-29-2021
Version: 1.0.0
.EXAMPLE
#>

#Create solution framework project folder, module folder, scripts folder, main.bicep file

$bicepSolutionName = Read-Host -Prompt 'Please enter your solution name, this will be used to name your solution framework '

New-Item -Path . -Name $bicepSolutionName -ItemType Directory
Set-Location -Path $bicepSolutionName

New-Item -Path . -Name scripts -ItemType Directory
New-Item -Path . -Name modules -ItemType Directory
New-Item -Path . -Name main.bicep -ItemType File
New-Item -Path . -Name README.md -ItemType File

git init . 
git add *
git commit -am 'Initial commit'



gh repo create $bicepSolutionName -l 'MIT' --public

git remote add $bicepSolutionName main https://github.com/daredevelops/$bicepSolutionName





# initialise git repo

