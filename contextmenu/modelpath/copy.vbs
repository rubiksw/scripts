Set objArgs = WScript.Arguments
If objArgs.Count = 0 Then
    WScript.Quit 1
End If

scriptFolder = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\"))
batchFilePath = scriptFolder & "copy.bat"

Dim shell
Set shell = CreateObject("WScript.Shell")
shell.Run """" & batchFilePath & """ """ & objArgs(0) & """", 0, False

