# Setup for Compress VTFs context menu on folders

To add the "Compress VTFs" option to the right-click context menu for folders:

1. Run the setup_context_menu.reg file as administrator to add the registry entry.
2. The context menu will appear when right-clicking on a folder background.
3. Selecting "Compress VTFs" will run the VBScript, which compresses all .vtf files in that folder using lmcm.exe.

Note: lmcm.exe must be in your PATH or you need to modify the VBScript to use the full path to lmcm.exe.