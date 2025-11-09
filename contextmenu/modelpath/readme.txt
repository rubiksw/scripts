# Model Path Copy Context Menu

This script adds a context menu option for .mdl files to copy the normalized model path to the clipboard.

## Files

- `copy.vbs`: The main script that processes the file path and copies it to the clipboard.
- `add_context_menu.reg`: Registry file to add the context menu entry.

## Installation

1. Edit `add_context_menu.reg` if necessary to match your script path.
2. Double-click `add_context_menu.reg` to apply the registry changes.
3. Right-click on any .mdl file and select "Copy model path" to copy the path.

## How it works

The script takes the full file path, normalizes it (replaces backslashes with forward slashes), extracts the part after "/models/", prefixes it with "models/", and copies the result to the clipboard.

For example: `C:\path\to\models\folder\file.mdl` becomes `models/folder/file.mdl`

## Uninstallation

To remove the context menu, delete the registry key: `HKEY_CLASSES_ROOT\mdlfile\shell\CopyModelPath`
