	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_800F1DA
	IMPORT sub_801549A
	IMPORT sub_80154AA
	IMPORT sub_80154BA
	IMPORT sub_80154CE
	IMPORT __16_ll_mulls
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l

	thumb_func_start sub_80017E4
sub_80017E4
	movs r0, #0
	cmp r1, #1
	beq %2
	cmp r1, #3
	beq %3
	cmp r1, #5
	beq %4
	cmp r1, #7
	bne %1
	movs r0, #8
1
	cmp r3, #2
	beq %5
	cmp r3, #0xa
	bne %6
	lsls r0, r0, #1
	b %6
2
	movs r0, #0x10
	b %1
3
	movs r0, #0xc
	b %1
4
	movs r0, #9
	b %1
5
	lsls r3, r0, #1
	adds r0, r3, r0
6
	muls r0, r2
	bx lr

	thumb_func_start sub_8001818
sub_8001818
	ldr r1, [r1]
	lsls r3, r1, #0x1c
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x15
	lsrs r3, r3, #0x1c
	cmp r2, #0
	bne %7
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x1c
7
	movs r1, #0
	cmp r3, #1
	beq %9
	cmp r3, #3
	beq %10
	cmp r3, #5
	beq %11
	cmp r3, #7
	bne %8
	movs r1, #8
8
	cmp r2, #2
	beq %12
	cmp r2, #0xa
	bne %13
	lsls r1, r1, #1
	b %13
9
	movs r1, #0x10
	b %8
10
	movs r1, #0xc
	b %8
11
	movs r1, #9
	b %8
12
	lsls r3, r1, #1
	adds r1, r3, r1
13
	muls r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_800185E
sub_800185E
	ldr r0, [r0, #0x34]
	lsls r1, r1, #4
	adds r0, r1, r0
	bx lr

	non_word_aligned_thumb_func_start nullsub_21
nullsub_21
	bx lr

	thumb_func_start sub_8001868
sub_8001868
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0xff
	lsls r0, r0, #8
	adds r7, r2, #0
	adds r5, r1, #0
	adds r4, r3, #0
	cmp r3, #0
	bge %14
	adds r4, r4, r0
	b %15
14
	cmp r4, r0
	ble %15
	subs r4, r4, r0
15
	add r0, pc, #0x1B0
	ldm r0!, {r0, r1}
	adds r2, r4, #0
	bl __16_ll_mulls
	add r6, pc, #0x1AC
	ldm r6!, {r2, r3}
	bl __16_ll_sdiv
	movs r1, #1
	lsls r1, r1, #0x10
	subs r6, r7, r5
	cmp r0, r1
	bge %17
	add r0, pc, #0x194
	ldm r0!, {r0, r1}
	adds r2, r6, #0
	bl __16_ll_mulls
	add r6, pc, #0x190
	ldm r6!, {r2, r3}
	subs r6, #8
	bl __16_ll_sdiv
	adds r1, r0, #0
	adds r0, r4, #0
	bl __16_ll_mulss
	ldm r6!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	add r2, pc, #0x178
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r0, r0, r5
16
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	adds r0, r4, #0
	asrs r1, r4, #0x1f
	movs r2, #9
	bl __16_ll_shift_l
	add r2, pc, #0x158
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	movs r1, #1
	lsls r1, r1, #0x10
	cmp r0, r1
	bge %18
	adds r0, r7, #0
	b %16
18
	add r0, pc, #0x154
	ldm r0!, {r0, r1}
	adds r2, r4, #0
	bl __16_ll_mulls
	add r7, pc, #0x138
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	movs r1, #1
	lsls r1, r1, #0x11
	cmp r0, r1
	bge %19
	ldr r0, _08001A54
	subs r0, r0, r4
	adds r1, r6, #0
	bl __16_ll_mulss
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r2, r0, #0
	add r0, pc, #0x10C
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	ldm r7!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	add r2, pc, #0x104
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r0, r0, r5
	b %16
19
	adds r0, r5, #0
	b %16

	thumb_func_start nullsub_22
nullsub_22
	bx lr

	non_word_aligned_thumb_func_start sub_800194E
sub_800194E
	movs r3, #0x67
	lsls r3, r3, #6
	push {r4, r5, r6}
	adds r4, r0, r3
	movs r3, #1
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x13
	bics r0, r3
	lsls r3, r1, #0x13
	orrs r0, r3
	str r0, [r4, #0x28]
	cmp r2, #0
	beq %22
	ldrh r2, [r4, #4]
	cmp r2, #0
	beq %22
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r0, [r4]
	lsls r2, r2, #5
	adds r0, r0, r2
	ldrh r2, [r4, #6]
	subs r2, #1
	blo %22
	lsls r5, r1, #0x11
	movs r6, #1
	lsls r6, r6, #0x11
20
	ldr r1, [r0]
	lsls r3, r1, #0x1e
	bpl %21
	bics r1, r6
	orrs r1, r5
	str r1, [r0]
21
	adds r0, #0x40
	ldrh r0, [r0, #0x14]
	ldr r1, [r4]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #5
	adds r0, r1, r0
	subs r2, #1
	bhs %20
22
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_80019A6
sub_80019A6
	movs r1, #0x67
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_80019B4
sub_80019B4
	ldr r1, _08001A58
	push {r3, lr}
	adds r0, r0, r1
	bl sub_800F1DA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019C4
sub_80019C4
	ldr r1, _08001A5C
	push {r3, lr}
	adds r0, r0, r1
	bl sub_80154CE
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019D4
sub_80019D4
	push {r3, lr}
	ldr r3, _08001A5C
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r1, r3
	bl sub_801549A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019E8
sub_80019E8
	push {r3, lr}
	ldr r3, _08001A5C
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r1, r3
	bl sub_80154AA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019FC
sub_80019FC
	push {r3, lr}
	ldr r3, _08001A5C
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r1, r3
	bl sub_80154BA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8001A10
sub_8001A10
	movs r2, #0x67
	lsls r2, r2, #6
	adds r0, r0, r2
	movs r3, #1
	lsls r3, r3, #0x14
	ldr r2, [r0, #0x28]
	lsls r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x28]
	bx lr

	non_word_aligned_thumb_func_start sub_8001A26
sub_8001A26
	movs r1, #0x67
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1f
	bx lr
	ALIGN
_08001A34 DCDU 0x00000600
_08001A38 DCDU 0x00000000
_08001A3C DCDU 0x00000100
_08001A40 DCDU 0x00000000
_08001A44 DCDU 0x00010000
_08001A48 DCDU 0x00000000
_08001A4C DCDU 0x00000300
_08001A50 DCDU 0x00000000
_08001A54 DCDU 0x0000AAAA
_08001A58 DCDU 0x00001AD4
_08001A5C DCDU 0x000019EC
	END
