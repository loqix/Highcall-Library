; Hc/NtUserCheckAccessForIntegrityLevel
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserCheckAccessForIntegrityLevel:DWORD

.DATA
.CODE

HcUserCheckAccessForIntegrityLevel PROC
	mov r10, rcx
	mov eax, sciUserCheckAccessForIntegrityLevel
	syscall
	ret
HcUserCheckAccessForIntegrityLevel ENDP

ELSE
; 32bit

EXTERNDEF C sciUserCheckAccessForIntegrityLevel:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserCheckAccessForIntegrityLevel PROC
	mov eax, sciUserCheckAccessForIntegrityLevel
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
HcUserCheckAccessForIntegrityLevel ENDP

ENDIF

END