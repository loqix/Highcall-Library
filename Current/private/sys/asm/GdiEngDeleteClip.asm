; Hc/NtGdiEngDeleteClip
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngDeleteClip:DWORD

.DATA
.CODE

HcGdiEngDeleteClip PROC
	mov r10, rcx
	mov eax, sciGdiEngDeleteClip
	syscall
	ret
HcGdiEngDeleteClip ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngDeleteClip:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngDeleteClip PROC
	mov eax, sciGdiEngDeleteClip
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
HcGdiEngDeleteClip ENDP

ENDIF

END