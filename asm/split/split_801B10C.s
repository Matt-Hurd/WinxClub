	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_080507EC
	IMPORT sub_8000D5A
	IMPORT sub_80015E6
	IMPORT sub_80154DC
	IMPORT sub_8015588
	IMPORT sub_80158E0
	IMPORT sub_8017620
	IMPORT sub_8017A0A
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803F72C
	IMPORT sub_803FC68

	thumb_func_start sub_801B10C
sub_801B10C
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	ldr r0, _0801B464
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0xb5
	bl sub_80154DC
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r1, [r0, #0x1c]
	movs r2, #0xfe
	lsrs r1, r1, #1
	lsls r1, r1, #1
	bics r1, r2
	adds r2, #2
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #2
	bics r1, r2
	str r1, [r0, #0x1c]
	movs r0, #0x29
	lsls r0, r0, #5
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	movs r0, #0
3
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	cmp r0, #0x64
	str r1, [r2, #0x20]
	blo %3
	adds r0, r4, #0
	b %1

	thumb_func_start sub_801B170
sub_801B170
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0801B468
	movs r6, #0
	ldr r7, [r4]
	adds r3, r6, #0
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803FC68
	adds r5, r0, #0
	adds r2, r0, #0
	cmp r0, #0xff
	strb r0, [r7, #0x14]
	bne %4
	ldr r0, [r4]
	ldrb r2, [r0, #0x14]
4
	ldr r0, _0801B46C
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x17
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	adds r2, r0, #0
	str r5, [sp]
	movs r3, #1
	movs r1, #2
	ldr r0, [r4]
	bl sub_8017A0A
	ldr r0, [r4]
	lsls r5, r5, #2
	strb r6, [r0, #0x14]
	movs r6, #5
	lsls r6, r6, #7
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %6
5
	movs r1, #0xff
	ldr r0, [r4]
	bl sub_8017620
	ldr r0, [r4]
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %5
6
	ldr r0, _0801B470
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_80015E6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801B1EC
sub_801B1EC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_801B170
	adds r0, r4, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0xb5
	bl sub_8015588
	cmp r5, #0
	beq %7
	adds r0, r4, #0
	bl sub_803DA18
7
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801B212
sub_801B212
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	sub sp, #8
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	beq %11
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	beq %11
	ldr r4, [r0, #0x24]
	cmp r4, #0
	beq %11
	ldr r0, [r4]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1f
	bne %11
	lsls r0, r0, #0x1f
	beq %11
	ldr r0, [r4, #0x18]
	ldr r6, _0801B474
	cmp r0, #0
	bne %8
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
8
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r5, [r5, #0x2c]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne %9
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
9
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	ldrh r1, [r3]
	movs r0, #0
	ldrsh r0, [r3, r0]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1d
	adds r0, r1, r0
	movs r1, #2
	ldrsh r1, [r3, r1]
	asrs r0, r0, #3
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1d
	adds r1, r2, r1
	asrs r1, r1, #3
	muls r0, r1
	ldr r1, [r4, #0x14]
	ldr r1, [r1]
	lsrs r1, r1, #0x15
	lsls r2, r1, #5
	ldr r1, _0801B478
	adds r4, r2, r1
	ldr r2, [r5, #0x14]
	ldr r2, [r2]
	lsrs r2, r2, #0x15
	lsls r2, r2, #5
	adds r5, r2, r1
	subs r0, #1
	blo %11
	ldr r1, _0801B47C
	mvns r2, r1
10
	ldm r5!, {r3}
	ands r3, r2
	str r3, [r4]
	adds r3, r4, #4
	adds r4, r5, #0
	ldr r5, [r5]
	adds r4, #4
	ands r5, r1
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r1
	stm r3!, {r5}
	b %12
11
	b %13
12
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r1
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r6}
	adds r5, r4, #0
	ands r6, r1
	stm r3!, {r6}
	adds r4, r3, #0
	subs r0, #1
	bhs %10
13
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801B332
sub_801B332
	push {r4, r5, r6, r7, lr}
	ldr r1, _0801B480
	movs r2, #4
	ldr r1, [r1]
	sub sp, #0x14
	ands r1, r2
	cmp r1, #0
	ldr r6, _0801B484
	bne %14
	ldr r0, [r0, #0x20]
	ldr r1, _0801B488
	ldr r0, [r0, #0x7c]
	add r3, sp, #0
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	ldrb r1, [r1, r0]
	strh r1, [r3, #0xc]
	adds r1, #0x10
	strh r1, [r3, #0x10]
	ldr r1, _0801B488
	adds r1, #4
	ldrb r0, [r1, r0]
	strh r0, [r3, #0xe]
	adds r0, #0x20
	strh r0, [r3, #0x12]
	b %17
14
	ldr r0, _0801B468
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0xc
	adds r0, r0, r1
	ldr r5, [r0, #0x1c]
	ldr r0, [r6]
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r4, [r0, #0xc]
	ldr r7, _0801B474
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne %15
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
15
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #8]
	strh r0, [r3, #0xa]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne %16
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
16
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	movs r0, #4
	ldrsh r0, [r3, r0]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x78
	subs r0, r0, r1
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	strh r0, [r3, #0xc]
	adds r0, #1
	strh r0, [r3, #0x10]
	movs r0, #6
	ldrsh r0, [r3, r0]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x50
	subs r0, r0, r1
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	adds r0, #1
	strh r0, [r3, #0x12]
	cmp r5, #0
	beq %17
	adds r0, r5, #0
	bl sub_80158E0
	cmp r0, #0
	beq %17
	add r3, sp, #0
	ldrh r0, [r3, #0xe]
	subs r0, #0x20
	strh r0, [r3, #0xe]
	ldrh r0, [r3, #0x12]
	subs r0, #0x20
	strh r0, [r3, #0x12]
17
	add r3, sp, #0
	ldrh r1, [r3, #0xe]
	ldr r0, [r6]
	lsls r2, r1, #8
	movs r1, #0x27
	lsls r1, r1, #6
	adds r1, r0, r1
	str r2, [r1]
	ldrh r2, [r3, #0xc]
	movs r3, #0x13
	lsls r3, r3, #7
	adds r0, r0, r3
	lsls r2, r2, #8
	str r2, [r0, #0x3c]
	add r3, sp, #0
	ldrh r0, [r3, #0x12]
	movs r2, #1
	lsls r0, r0, #8
	str r0, [r1, #8]
	ldrh r0, [r3, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r0, [r1, #0x3c]
	orrs r0, r2
	str r0, [r1, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801B464 DCDU 0x00000524
_0801B468 DCDU gUnknown_03003454
_0801B46C DCDU gUnknown_03003E88
_0801B470 DCDU gUnknown_03003448
_0801B474 DCDU gUnknown_03003EA0
_0801B478 DCDU 0x06010000
_0801B47C DCDU 0x0F0F0F0F
_0801B480 DCDU gUnknown_03003478
_0801B484 DCDU gUnknown_03003450
_0801B488 DCDU gUnknown_080507EC
	END
