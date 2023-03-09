    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_80012F0
	IMPORT sub_8001338

	thumb_func_start sub_803F23C
sub_803F23C ;@ 0x0803F23C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r7, r0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	movs r5, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0803F2C0
	lsls r0, r1, #0x1f
	lsrs r3, r0, #0x12
	str r3, [sp, #4]
_0803F25A
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r0, [r0, #0x20]
	movs r1, #0x97
	ldrb r1, [r1, r0]
	cmp r1, #4
	beq _0803F26C
	cmp r1, #6
	bne _0803F2B2
_0803F26C
	adds r2, r0, #0
	adds r2, #0x80
	ldr r1, [r2, #0xc]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r1, r3
	ldr r3, [sp, #4]
	orrs r1, r3
	str r1, [r2, #0xc]
	ldr r4, [r0, #0x2c]
	lsls r0, r1, #0x12
	lsrs r6, r0, #0x1f
	ldr r0, [r4]
	beq _0803F298
	lsls r0, r0, #0x1c
	bmi _0803F2A6
	ldr r0, _0803F2C8 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0803F2A6
_0803F298
	lsls r0, r0, #0x1c
	bpl _0803F2A6
	ldr r0, _0803F2C8 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0803F2A6
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r4]
_0803F2B2
	ldr r0, [sp, #8]
	adds r5, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r5
	bhi _0803F25A
_0803F2C0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803F2C8 DCDU gUnknown_03003EB8
