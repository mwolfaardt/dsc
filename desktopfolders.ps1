# Define the folder name and path
$folderName = "Streaming"
$desktopPath = [System.Environment]::GetFolderPath("Desktop")
$folderPath = Join-Path -Path $desktopPath -ChildPath $folderName

# Check if the folder already exists
if (-Not (Test-Path -Path $folderPath)) {
    # Create the folder
    New-Item -Path $folderPath -ItemType Directory
    Write-Host "Folder '$folderName' created on your desktop."
} else {
    Write-Host "Folder '$folderName' already exists on your desktop."
}