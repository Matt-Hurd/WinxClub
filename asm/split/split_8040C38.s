	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003BC8

	thumb_func_start sub_8040C38
sub_8040C38
	ldr r2, _08040C74
	ldrb r1, [r2, #7]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r2, #7]
	ldrb r3, [r2, #8]
	cmp r1, r3
	bls _08040C62
	ldrh r1, [r2]
	lsls r3, r1, #0x17
	bmi _08040C5C
	ldrb r1, [r2, #0xa]
	adds r1, #1
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #9]
	strb r1, [r2, #7]
	b _08040C62
_08040C5C
	movs r3, #8
	orrs r1, r3
	strh r1, [r2]
_08040C62
	strh r0, [r2, #0xc]
	ldrb r1, [r2, #7]
	ldr r0, [r2, #0x18]
	ldrb r0, [r0, r1]
	ldr r1, [r2, #0x24]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r2, #0x28]
	bx lr
	ALIGN
_08040C74 DCDU gUnknown_03003BC8
	END