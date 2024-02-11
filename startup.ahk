#Requires AutoHotkey v2.0
#SingleInstance force

_ScriptDir := "D:\ahk\script"

Loop Files, _ScriptDir "\*.ahk", "R"
{
    Run Format('"{1}" /ErrorStdOut=utf-8 "{2}"', A_AhkPath, A_LoopFileFullPath)
}
