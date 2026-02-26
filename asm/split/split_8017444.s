	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__371dword_803ED1C

	thumb_func_start sub_8017444

sub_8017444
	ldr r1, _08017468
	str r1, [r0]
	ldr r1, _0801746C
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr

	ALIGN
_08017468 DCDU __VTABLE__371dword_803ED1C
_0801746C DCDU 0x0000FFFE

	END
