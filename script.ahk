; caps to escape and control
SetCapsLockState Off

CapsLock::
	key=
	Input, key, B C L1 T1, {Esc}
	if (ErrorLevel = "Max")
		Send {Ctrl Down}%key%
	KeyWait, CapsLock
	Return
CapsLock up::
	If key
		Send {Ctrl Up}
	else
		if (A_TimeSincePriorHotkey < 1000)
			Send, {Esc 2}
	Return
  
LShift & RShift:: CapsLock

; always on top
^LWin:: Winset, Alwaysontop, , A

;RAlt
RAlt::return
>!h::Send {Left}
>!j::Send {Down}
>!k::Send {Up}
>!l::Send {Right}
>!c::Send {Media_Play_Pause}
>!x::Send {Media_Next}
>!z::Send {Media_Prev}
>!a::Send {Volume_Down}
>!s::Send {Volume_Up}
>!d::Send {Volume_Mute}

>!g::Run "https://google.com"
