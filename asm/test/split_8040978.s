    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003520
	IMPORT gUnknown_03003BC8
	IMPORT gUnknown_0804AF2C

	thumb_func_start sub_8040978
sub_8040978 ;@ 0x08040978
	push {r4}
	ldrh r1, [r0, #4]
	lsls r2, r1, #0x1c
	bpl _080409A6
	movs r3, #0xe
	ldrsb r4, [r0, r3]
	ldrb r2, [r0, #0xc]
	movs r3, #0x12
	adds r2, r2, r4
	ldrsh r4, [r0, r3]
	lsls r2, r2, #7
	movs r3, #0x14
	adds r2, r2, r4
	ldrsh r4, [r0, r3]
	ldr r3, _080409D8 ;@ =gUnknown_0804AF2C
	adds r2, r2, r4
	lsls r2, r2, #1
	ldrh r2, [r3, r2]
	ldr r3, _080409DC ;@ =gUnknown_03003520
	ldrh r3, [r3, #0x1a]
	muls r3, r2
	lsrs r2, r3, #8
	str r2, [r0, #0x44]
_080409A6
	lsls r2, r1, #0x1b
	bpl _080409CE
	movs r3, #0xf
	ldrsb r4, [r0, r3]
	ldr r3, _080409E0 ;@ =gUnknown_03003BC8
	ldrh r2, [r0, #0x22]
	ldrh r3, [r3, #0x16]
	muls r4, r3
	asrs r3, r4, #8
	lsls r4, r1, #0x1d
	bpl _080409C8
	muls r3, r2
	ldr r2, [r0, #0x1c]
	muls r3, r2
	lsrs r2, r3, #0x16
	str r2, [r0, #0x38]
	b _080409CE
_080409C8
	muls r3, r2
	lsrs r2, r3, #6
	str r2, [r0, #0x38]
_080409CE
	movs r2, #0x18
	bics r1, r2
	strh r1, [r0, #4]
	pop {r4}
	bx lr
	ALIGN
_080409D8 DCDU gUnknown_0804AF2C
_080409DC DCDU gUnknown_03003520
_080409E0 DCDU gUnknown_03003BC8
