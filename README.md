# Desired State Configuration using WinGet

Powershell Desired State Configuration using Winget will configure Windows with the desired state when you setup a new / existing maching. The powerful winget files will install and configure your machine with all your favourite applications using a predefined file.

# Applications List

- [x] Visual Studio Code
- [x] Visual Studio
- [x] Github
- [x] Scribus
- [x] Scanner
- [x] Clipself
- [x] ShareX
- [x] Devdrive
- [ ] Zoom
- [x] Github Desktop
- [x] Stellarium
- [x] Google Chrome
- [x] .net 9
- [ ] Youtube-dl
- [ ] ImageMagick
- [x] Google Quickshare
- [x] Tailscale
- [x] PDFGear
- [x] Photosync
- [x] [NAPS2](https://www.naps2.com/) - Scanner
- [x] [Expanso] (https://espanso.org/docs/get-started/) - Text Expander
- [x] Upgrade Powershell to latest version

# AI
- [x] AI Foundry
- [x] Ollama
- [x] Google Gemini-Cli

# File Managers
- [x] Files Community
- [ ] XYPlorer

# Screen recording, production, streaming

- [x] ScreenToGif
- [x] Touch Portal
- [x] Deckboard
- [x] Zoomit
- [x] Autohotkey
- [x] OBS
- [x] Scrcpy
- [ ] Ontime https://getontime.no/
- [ ] RegionToShare
- [x] VLC
- [x] Spacedesk
- [x] EarTrumpet

# PowerToys Extentions
 - [ ] Timezone Convertor (Power Commandlet) 9P4TC0QM648H
# Graphics

- [x] Inkscape
- [ ] Inkscape extentions
- [ ] Draw.IO
- [x] Blender
- [x] Gimp
- [ ] [PPInk](https://github.com/pubpub-zz/ppInk)

# OBS Plugins

- [ ] OBS Advance Mask https://obsproject.com/forum/resources/advanced-masks.1856/ or https://github.com/FiniteSingularity/obs-advanced-masks/releases/tag/v1.1.0
- [ ] Stroke Plugin https://obsproject.com/forum/resources/stroke-glow-shadow.1800/
- [ ] Gradient Plugin https://obsproject.com/forum/resources/gradient-source.1172/
- [ ] OBS Shader Filter https://obsproject.com/forum/resources/obs-shaderfilter.1736/
- [ ] Move Plugin

# Shortcuts

- [x] Pairdrop
- [x] [Shortcutkeeper](https://shortcutkeeper.com/windows.html)

# Windows Utilities
- [ ] [NileSoft Shell](https://nilesoft.org/)


# How to use

```powershell
winget configure .\{filename.winget}

winget configure .\autohotkey.winget
```

# Update all your installed packages
Run Powershell as Administrator to help with  user account prompt asking if you want to install the application.Run the below command
```powershell
winget upgrade all --silient
```

# Resources

[Microsoft Learn] (https://learn.microsoft.com/en-us/windows/package-manager/winget)
[WingetCollections] (https://winget.ragerworks.com/)

# Visual Studio Code Snippets
I've create a new visual studio code snippet in the .vscode folder. You can now just type DSC-Winget and it will generate the YAML for you.