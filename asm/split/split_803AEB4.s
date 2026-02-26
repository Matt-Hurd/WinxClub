	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_800CD58

	thumb_func_start sub_803AEB4

sub_803AEB4
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	movs r5, #2
	cmp r0, #0
	bne %4
	ldr r0, _0803B13C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	str r0, [r4, #0x3c]
	movs r0, #0x9d
	str r0, [r4, #0x38]
	movs r0, #0x40
	strb r5, [r0, r4]
4
	ldr r1, [r4, #0x3c]
	ldr r6, _0803B140
	ldr r1, [r1, #0x2c]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r0, [r4, #0x3c]
	movs r2, #0xff
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0xb
	ldrb r0, [r0, #5]
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r0]
	orrs r1, r5
	movs r5, #0xff
	adds r5, #1
	bics r1, r5
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r0, #0x2c]
	ldr r7, [r0, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r1, r0, #0
	subs r2, r2, r7
	ldr r7, [r0, #0x34]
	adds r1, #0x34
	adds r7, r7, r3
	str r7, [r0, #0x34]
	ldr r7, [r0, #0x38]
	adds r7, r7, r2
	str r7, [r1, #4]
	ldr r7, [r1, #8]
	adds r3, r7, r3
	str r3, [r1, #8]
	ldr r3, [r1, #0xc]
	adds r2, r3, r2
	str r2, [r1, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r1, [r0]
	movs r3, #3
	orrs r1, r5
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %5
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
5
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r7, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi %7
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %6
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %6
	ldr r0, _0803B144
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
6
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl %7
	orrs r0, r5
	str r0, [r4]
7
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0803B13C DCDU gUnknown_03003458
_0803B140 DCDU gUnknown_03003EB8
_0803B144 DCDU gUnknown_03003EA0

	END
