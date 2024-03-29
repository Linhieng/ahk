#Requires AutoHotkey v2.0
#SingleInstance force

; 只使用微软拼音，并且关闭系统自带的语言模式切换，通过 autoHotkey 自定义
; 由于不知道如何为所有窗口设置统一的输入模式，最终不采用本热键

; DetectHiddenWindows True

; 方案一：左 shift 始终切换到英文；右 shift 始终切换到中文
; ~LShift:: switch_mode(0)
; ~RShift:: switch_mode(1025)

; 方案二： win+space 实现语言切换
; #Space::
; {
;     mode := 0
;     text := "ENG"
;     if ifEnglishMode() {
;         mode := 1025
;         text := "zh-CN"
;     }
;     switch_mode(mode)

;     ToolTip "switch to " text
;     SetTimer () => ToolTip(), -1000
; }


; ifEnglishMode() {
;     return 0 == SendMessage( 0x283, 1, 0, , "ahk_id " DllCall("imm32\ImmGetDefaultIMEWnd", "Uint", winGetID("A"), "Uint") )
; }


; switch_mode(mode)
; {
;     SendMessage( 0x283, 2, mode, , "ahk_id " DllCall("imm32\ImmGetDefaultIMEWnd", "Uint", winGetID("A"),) )
; }
