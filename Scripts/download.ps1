Write-Host "Downloading Files..."
#make a list of strings and for each string, download the file
$urls = @(
    "https://github.com/neovim/neovim/releases/download/v0.6.1/nvim-win64.zip",
    "https://nodejs.org/dist/v16.14.2/node-v16.14.2-win-x64.zip",
    "https://github.com/PowerShell/PowerShell/releases/download/v7.2.2/PowerShell-7.2.2-win-arm64.zip"
    );


New-Item -ItemType Directory -Path ./cache/downloads
foreach ($url in $urls)
{
    Invoke-WebRequest -Uri $url -OutFile ./cache/downloads/$($url.split('/')[-1])
    Expand-Archive -Path ./cache/downloads/$($url.split('/')[-1]) -DestinationPath ./cache/downloads/
    Remove-Item -Path ./cache/downloads/$($url.split('/')[-1])

}

