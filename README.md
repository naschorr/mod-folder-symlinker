# mod-folder-symlinker
Makes it easy to sync game mods between people

## Usage
NOTE: Requires Dropbox, or some other automated file syncing service that allows shared folders.

- Add the batch script into your Dropbox's directory for a game's mods. For example, if your Dropbox Factorio mod directory is at: `D:\Dropbox\Mods\Factorio\`, then place the script inside that `\Factorio\` directory.
- Edit the script to change 2nd and 4th args in BrowseForFolder to change the title of the browser, and the path it defaults to. I recommend that the new path is the parent directory of where you want the mods folder to end up. This makes navigation easy. (Line 10)
- Edit the name of the game's mods folder (if necessary) (Line 17)
- Save and run.
- Tell your friends to run the script, so that their symlinks are created.
