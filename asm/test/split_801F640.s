    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E88
	IMPORT sub_8017862
	IMPORT sub_80179BE
	IMPORT sub_803B8CC
	IMPORT sub_803F72C
	IMPORT sub_803FC68
	IMPORT sub_80401E4

	thumb_func_start sub_801F640
sub_801F640 ;@ 0x0801F640
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _0801F65A
	ldr r2, [r0]
	lsls r3, r2, #0x15
	lsrs r3, r3, #0x1f
	beq _0801F65A
	movs r3, #1
	lsls r3, r3, #0xb
	bics r2, r3
	lsls r1, r1, #0xb
	orrs r1, r2
	str r1, [r0]
_0801F65A
	bx lr

	thumb_func_start sub_801F65C
sub_801F65C ;@ 0x0801F65C
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	adds r4, r0, #0
	movs r7, #0
_0801F664
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x38]
	cmp r0, #0
	beq _0801F67C
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
	str r7, [r6, #0x38]
_0801F67C
	adds r5, #1
	cmp r5, #5
	blo _0801F664
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0801F690
	movs r1, #0
	bl sub_80401E4
_0801F690
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0801F69E
	movs r1, #1
	bl sub_80401E4
_0801F69E
	ldr r0, _0801F788 ;@ =gUnknown_03003454
	ldr r5, [r0]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	lsls r0, r6, #1
	adds r1, r0, r5
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_8017862
	lsls r0, r6, #2
	movs r1, #9
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r0, r0, r1
	str r7, [r0, #0x18]
	ldr r0, [r4, #0x7c]
	movs r1, #0xff
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r4, #0x7c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801F6DE
sub_801F6DE ;@ 0x0801F6DE
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	bne _0801F780
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #4]
	lsls r0, r0, #4
	lsrs r1, r0, #0x14
	beq _0801F780
	ldr r1, _0801F78C ;@ =gUnknown_03003478
	movs r7, #1
	ldr r1, [r1]
	movs r2, #8
	ands r2, r1
	beq _0801F780
	movs r2, #4
	ands r1, r2
	bne _0801F780
	ldr r1, [r5, #0x1c]
	cmp r1, #0xf
	beq _0801F780
	cmp r1, #0x10
	beq _0801F780
	lsrs r3, r0, #0x14
	ldr r6, _0801F788 ;@ =gUnknown_03003454
	ldr r1, [r4, #0x4c]
	ldr r0, [r6]
	movs r2, #1
	bl sub_803FC68
	movs r2, #0xff
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	ldr r1, [r5]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	beq _0801F76A
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _0801F744
	ldr r0, [r6]
	ldrb r2, [r0, #0x14]
_0801F744
	ldr r0, _0801F790 ;@ =gUnknown_03003E88
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1d
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	ldr r1, [r4, #0x7c]
	adds r3, r7, #0
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, [r6]
	adds r1, r4, #0
	bl sub_80179BE
_0801F76A
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	beq _0801F780
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0801F780
	movs r1, #1
	bl sub_80401E4
_0801F780
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801F788 DCDU gUnknown_03003454
_0801F78C DCDU gUnknown_03003478
_0801F790 DCDU gUnknown_03003E88
