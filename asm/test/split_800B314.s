    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E94
	IMPORT sub_8004C2C
	IMPORT sub_800B646
	IMPORT sub_800B652
	IMPORT sub_800B66A
	IMPORT sub_803B4D8
	IMPORT sub_803B5A0
	IMPORT sub_803B81C
	IMPORT sub_803BF0C

	thumb_func_start sub_800B314
sub_800B314 ;@ 0x0800B314
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r6, [sp, #0x30]
	bl sub_8004C2C
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	movs r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B33E
	bl sub_800B66A
	cmp r0, #0
	beq _0800B33E
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B652
	movs r5, #1
_0800B33E
	cmp r4, #0
	beq _0800B366
	cmp r4, #1
	bne _0800B34C
	movs r0, #0x40
	bl sub_803B4D8
_0800B34C
	cmp r4, #0
	beq _0800B354
	cmp r4, #1
	bne _0800B3AA
_0800B354
	adds r6, #7
	lsrs r6, r6, #3
	movs r4, #0
	cmp r6, #0
	bls _0800B3AA
	lsrs r0, r7, #3
	str r0, [sp, #8]
	mov r7, sp
	b _0800B36E
_0800B366
	movs r0, #4
	bl sub_803B4D8
	b _0800B34C
_0800B36E
	ldr r1, [sp, #0x18]
	lsls r0, r4, #3
	adds r1, r0, r1
	movs r2, #8
	adds r0, r7, #0
	bl sub_803BF0C
	ldr r0, [sp, #8]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_803B81C
	cmp r0, #0
	beq _0800B3A4
	cmp r5, #0
	beq _0800B39A
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B39A
	movs r0, #0
_0800B39C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800B3A4
	adds r4, #1
	cmp r4, r6
	blo _0800B36E
_0800B3AA
	cmp r5, #0
	beq _0800B3B6
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B3B6
	movs r0, #1
	b _0800B39C

	non_word_aligned_thumb_func_start sub_800B3BA
sub_800B3BA ;@ 0x0800B3BA
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r6, [sp, #0x30]
	bl sub_8004C2C
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	movs r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B3E4
	bl sub_800B66A
	cmp r0, #0
	beq _0800B3E4
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B652
	movs r5, #1
_0800B3E4
	cmp r4, #0
	beq _0800B40C
	cmp r4, #1
	bne _0800B3F2
	movs r0, #0x40
	bl sub_803B4D8
_0800B3F2
	cmp r4, #0
	beq _0800B3FA
	cmp r4, #1
	bne _0800B450
_0800B3FA
	adds r6, #7
	lsrs r6, r6, #3
	movs r4, #0
	cmp r6, #0
	bls _0800B450
	lsrs r0, r7, #3
	str r0, [sp, #8]
	mov r7, sp
	b _0800B414
_0800B40C
	movs r0, #4
	bl sub_803B4D8
	b _0800B3F2
_0800B414
	ldr r0, [sp, #8]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_803B5A0
	cmp r0, #0
	beq _0800B43C
	cmp r5, #0
	beq _0800B432
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B432
	movs r0, #0
_0800B434
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800B43C
	ldr r1, [sp, #0x18]
	lsls r0, r4, #3
	adds r0, r0, r1
	movs r2, #8
	adds r1, r7, #0
	bl sub_803BF0C
	adds r4, #1
	cmp r4, r6
	blo _0800B414
_0800B450
	cmp r5, #0
	beq _0800B45C
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B45C
	movs r0, #1
	b _0800B434
	ALIGN
_0800B460 DCDU gUnknown_03003E94
