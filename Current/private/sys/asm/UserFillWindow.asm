; Hc/NtUserFillWindow
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserFillWindow:DWORD

.DATA
.CODE

HcUserFillWindow PROC
	mov r10, rcx
	mov eax, sciUserFillWindow
	syscall
	ret
HcUserFillWindow ENDP

ELSE
; 32bit

EXTERNDEF C sciUserFillWindow:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserFillWindow PROC
	mov eax, sciUserFillWindow
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserFillWindow ENDP

ENDIF

END