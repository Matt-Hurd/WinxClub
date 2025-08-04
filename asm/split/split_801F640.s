	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E88
	IMPORT sub_8017862
	IMPORT sub_80179BE
	IMPORT __call_via_r2
	IMPORT sub_803F72C
	IMPORT sub_803FC68
	IMPORT sub_80401E4

	thumb_func_start sub_801F640
sub_801F640
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq %1
	ldr r2, [r0]
	lsls r3, r2, #0x15
	lsrs r3, r3, #0x1f
	beq %1
	movs r3, #1
	lsls r3, r3, #0xb
	bics r2, r3
	lsls r1, r1, #0xb
	orrs r1, r2
	str r1, [r0]
1
	bx lr

	thumb_func_start sub_801F65C
sub_801F65C
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	adds r4, r0, #0
	movs r7, #0
2
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x38]
	cmp r0, #0
	beq %3
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	str r7, [r6, #0x38]
3
	adds r5, #1
	cmp r5, #5
	blo %2
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %4
	movs r1, #0
	bl sub_80401E4
4
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %5
	movs r1, #1
	bl sub_80401E4
5
	ldr r0, _0801F788
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
sub_801F6DE
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	bne %8
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #4]
	lsls r0, r0, #4
	lsrs r1, r0, #0x14
	beq %8
	ldr r1, _0801F78C
	movs r7, #1
	ldr r1, [r1]
	movs r2, #8
	ands r2, r1
	beq %8
	movs r2, #4
	ands r1, r2
	bne %8
	ldr r1, [r5, #0x1c]
	cmp r1, #0xf
	beq %8
	cmp r1, #0x10
	beq %8
	lsrs r3, r0, #0x14
	ldr r6, _0801F788
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
	beq %7
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne %6
	ldr r0, [r6]
	ldrb r2, [r0, #0x14]
6
	ldr r0, _0801F790
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
7
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	beq %8
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %8
	movs r1, #1
	bl sub_80401E4
8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801F788 DCDU gUnknown_03003454
_0801F78C DCDU gUnknown_03003478
_0801F790 DCDU gUnknown_03003E88
	END
