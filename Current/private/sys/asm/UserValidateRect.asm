; Hc/NtUserValidateRect
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserValidateRect:DWORD

.DATA
.CODE

HcUserValidateRect PROC
	mov r10, rcx
	mov eax, sciUserValidateRect
	syscall
	ret
HcUserValidateRect ENDP

ELSE
; 32bit

EXTERNDEF C sciUserValidateRect:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserValidateRect PROC
	mov eax, sciUserValidateRect
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
HcUserValidateRect ENDP

ENDIF

END