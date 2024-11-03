# Update winget package list
winget upgrade --all

# 1. Install Visual Studio Code
winget install -e --id Microsoft.VisualStudioCode -h --silent

# 2. Install .NET SDK (latest version)
winget install -e --id Microsoft.DotNet.SDK.7 -h --silent # Change '7' to latest if needed

# 3. Install Node.js (for package management and front-end build tools)
winget install -e --id OpenJS.NodeJS.LTS -h --silent

# 4. Install Blazor and C# extensions in Visual Studio Code
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.blazorwasm-companion

# Optional: Add other useful extensions for Blazor
# code --install-extension ms-vscode.vscode-typescript-next # For TypeScript, if needed
# code --install-extension dbaeumer.vscode-eslint # For linting JavaScript, if needed

Write-Output "Blazor development environment setup is complete."
