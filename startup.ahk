#Requires AutoHotkey v2.0
#SingleInstance force


Scripts := [
    "D:\ahk\script\drag.ahk",
    "D:\ahk\script\my-hotkey.ahk",
]
; 同样的事情再来一次:
For path in Scripts
    Run Format('"{1}" /ErrorStdOut=utf-8 "{2}"', A_AhkPath, path)


; _ScriptDir := "D:\ahk\script"

; Loop Files, _ScriptDir "\*.ahk", "R"
; {
;     Run Format('"{1}" /ErrorStdOut=utf-8 "{2}"', A_AhkPath, A_LoopFileFullPath)
; }
