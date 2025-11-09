Set objArgs = WScript.Arguments
If objArgs.Count = 0 Then
    WScript.Quit 1
End If

inputPath = objArgs(0)
normalizedPath = LCase(Replace(inputPath, "\", "/"))

If InStr(normalizedPath, "/models/") = 0 Then
    WScript.Quit 1
End If

outputPath = "models/" & Mid(normalizedPath, InStr(normalizedPath, "/models/") + 8)

Dim shell
Set shell = CreateObject("WScript.Shell")
shell.Run "cmd /c echo | set /p=""" & outputPath & """ | clip", 0, False
