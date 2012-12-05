
# Create OSSecHub Home Folder
$folderName = "c:\ossechub\"
mkdir -force  $folderName
cd $folderName

# Download Helper Library
$downloadUrl1 = "https://raw.github.com/writeameer/test/master/OSSecHub.WindowsAgent.dll"
$downloadFile = Join-Path $folderName $downloadUrl1.Split('/')[-1]
(New-Object System.Net.WebClient).DownloadFile($downloadUrl1,$downloadFile)

# Download Helper Library
$downloadUrl2 = "https://raw.github.com/writeameer/test/master/Installer.ps1"
$downloadFile = Join-Path $folderName $downloadUrl2.Split('/')[-1]
(New-Object System.Net.WebClient).DownloadFile($downloadUrl2,$downloadFile)

# Run Installer

& "$downloadFile"
