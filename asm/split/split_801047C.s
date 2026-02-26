	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0804AE70

	thumb_func_start sub_801047C

sub_801047C
	push {r4, r5, r6, r7}
	movs r6, #0xff
	ldr r5, _08010698
	movs r4, #0
	adds r6, #1
6
	movs r1, #0
7
	movs r2, #0x1f
	asrs r3, r1, #3
	cmp r3, #0x1f
	bge %10
	movs r2, #0
	cmp r1, #0
	blt %10
	ldrb r2, [r5, r4]
	lsls r7, r1, #0x1d
	lsrs r7, r7, #0x1d
	cmp r2, r7
	bhs %8
	movs r2, #1
	b %9
8
	movs r2, #0
9
	adds r2, r2, r3
10
	strb r2, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r6
	blo %7
	adds r4, #1
	cmp r4, #0x10
	blo %6
	pop {r4, r5, r6, r7}
	bx lr

	ALIGN
_08010698 DCDU gUnknown_0804AE70

	END
