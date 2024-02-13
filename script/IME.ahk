#Requires AutoHotkey v2.0
#SingleInstance force

; 只使用微软拼音，并且关闭系统自带的语言模式切换，通过 autoHotkey 自定义

DetectHiddenWindows True

DEFAULT_IME := "ahk_id " DllCall("imm32\ImmGetDefaultIMEWnd", "Uint", winGetID("A"), "Uint")

; 方案一：左 shift 始终切换到英文；右 shift 始终切换到中文

~LShift:: SendMessage( 0x283, 2, 0, , DEFAULT_IME )
~RShift:: SendMessage( 0x283, 2, 1025, , DEFAULT_IME)


; 方案二： win+space 实现语言切换
; #Space::
; {
;     mode := 0
;     text := "ENG"
;     if ifEnglishMode() {
;         mode := 1025
;         text := "zh-CN"
;     }
;     SendMessage( 0x283, 2, mode, , DEFAULT_IME )

;     ToolTip "switch to " text
;     SetTimer () => ToolTip(), -2000
; }


; ifEnglishMode() {
;     return 0 == SendMessage( 0x283, 1, 0, , DEFAULT_IME )
; }
