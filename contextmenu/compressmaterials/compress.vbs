If WScript.Arguments.Count = 0 Then
    WScript.Quit
End If

Dim folderPath
folderPath = WScript.Arguments(0)

Dim objShell, objFSO, folder, file

Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

If Not objFSO.FolderExists(folderPath) Then
    WScript.Quit
End If

Set folder = objFSO.GetFolder(folderPath)

For Each file In folder.Files
    If LCase(objFSO.GetExtensionName(file.Path)) = "vtf" Then
        objShell.Run "lmcm.exe """ & file.Path & """", 0, True
    End If
Next

' Cleanup VTFLib.dll if it exists
Dim dllPath
dllPath = objFSO.BuildPath(folderPath, "VTFLib.dll")
If objFSO.FileExists(dllPath) Then
    objFSO.DeleteFile dllPath
End If

