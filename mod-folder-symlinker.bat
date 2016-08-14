:: Mod Folder Auto-Sync
:: Script for building the symlink between a game's mod folder and Dropbox. Currently set for Minecraft.
:: Nick Schorr

@echo off
setlocal

:: Change 2nd, and 4th args in BrowseForFolder to change the title of the browser, and the path it defaults to. (respectively)
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Select Minecraft root directory. (Should be top folder in this tree, assuming everything is still default)',0,'C:\Users\%username%\AppData\Roaming\.minecraft').self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

if "%folder%" == "" goto fileError

:: Change 'mods' to whatever folder name is necessary for the game.
set folder=%folder%\mods
set batpath=%~dp0

rmdir %folder% 2>nul

echo Creating junction between %folder% and %batpath%.
mklink /J "%folder%" "%batpath%"

echo Complete. Exiting in 5 seconds.
timeout /t 5
exit

:fileError 
echo Empty string returned from file dialog. Did you select the correct folder? Run the script again.
timeout /t 10
exit