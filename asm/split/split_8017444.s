	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_0803ED1C
	IMPORT sub_80177E8

	thumb_func_start sub_8017444
sub_8017444
	ldr r1, _08017468
	str r1, [r0]
	ldr r1, _0801746C
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr

	thumb_func_start sub_8017450
sub_8017450
	ldr r1, _08017468
	push {r3, lr}
	str r1, [r0]
	adds r1, r0, #0
	ldr r0, _08017470
	ldr r0, [r0]
	bl sub_80177E8
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08017468 DCDU gUnknown_0803ED1C
_0801746C DCDU 0x0000FFFE
_08017470 DCDU gUnknown_03003454
	END