#Requires AutoHotkey v2.0
#SingleInstance force

; NumLock 代替鼠标单击。NumLock 是魔咖单模87键盘设置在原 Fn 按键上的。
NumLock::Click


; Win+M 打开 wt 终端
A_MenuMaskKey := "vkE8"
windowTernimalPath := Format("C:\Users\{1}\AppData\Local\Microsoft\WindowsApps\wt.exe", A_UserName)
#M::
{
    Run windowTernimalPath
}
