#This will normalize and copy the file path when right clicking on a .mdl file

Computer\HKEY_CLASSES_ROOT\.mdl --> mdlfile
Computer\HKEY_CLASSES_ROOT\mdlfile\shell\CopyModelPath --> Copy model path --> \command --> wscript "C:\path\to\copy.vbs" "%V"