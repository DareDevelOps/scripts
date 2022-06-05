$goModDir = Read-Host -Prompt "Please enter the name of your new Go project"


New-Item -Path . -Name $goModDir -ItemType Directory
Set-Location -Path $goModDir

go mod init github.com/DareDevelOps/$goModDir