$repoName = read-host -Prompt "Provide a Repo name"

New-Item -Path . -Name $repoName -ItemType Directory
Set-Location -Path $repoName

git init 
gh repo create $repoName -y -l MIT --public

new-item -Path . -Name README.MD -ItemType File