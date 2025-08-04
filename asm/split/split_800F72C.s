	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT __VTABLE__314dword_803E5C8
	IMPORT nullsub_5
	IMPORT sub_800529A
	IMPORT sub_800FB48
	IMPORT sub_800FB72
	IMPORT sub_800FE3A
	IMPORT sub_80132F4
	IMPORT __call_via_r1
	IMPORT __16_ll_mulls
	IMPORT __16_ll_ushift_r
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DAC0
	IMPORT sub_80130DC
	IMPORT sub_804061C

	thumb_func_start sub_800F72C
sub_800F72C
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x8c
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
	bl sub_800FB48
	ldr r0, _0800FA38
	movs r1, #0x88
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x6c]
	str r0, [r1, r4]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_800F75A
sub_800F75A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800FA38
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F77C
sub_800F77C
	movs r0, #0x89
	lsls r0, r0, #2
	bx lr

	non_word_aligned_thumb_func_start sub_800F782
sub_800F782
	str r1, [r0, #0x6c]
	bx lr

	non_word_aligned_thumb_func_start sub_800F786
sub_800F786
	adds r2, r0, #0
	adds r2, #0x80
	push {r3, lr}
	ldr r1, [r2, #8]
	cmp r1, #0
	beq %4
	ldr r0, [r0, #0x5c]
	lsls r0, r0, #0x1e
	beq %4
	ldr r0, _0800FA3C
	ldr r0, [r0]
	ldr r2, [r2]
	bl nullsub_5
4
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800F7A8
sub_800F7A8
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	movs r1, #0x84
	ldrh r1, [r1, r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	cmp r1, r0
	bhs %6
	subs r0, r0, r1
5
	pop {r4}
	pop {r3}
	bx r3
6
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	adds r0, r1, r0
	b %5

	non_word_aligned_thumb_func_start sub_800F7D6
sub_800F7D6
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #4]
	sub sp, #0xc
	adds r4, r0, #0
	adds r4, #0x80
	str r2, [sp, #8]
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r1, #0
	movs r6, #0
	cmp r0, r1
	bhs %7
	subs r6, r7, r0
	adds r7, r0, #0
7
	ldr r0, _0800FA3C
	ldr r0, [r0]
	ldr r1, [r4, #8]
	bl sub_803DAC0
	str r0, [sp, #4]
	ldr r1, [r5, #0x6c]
	movs r2, #1
	lsls r2, r2, #9
	adds r1, r1, r2
	str r0, [r1, #0x20]
	cmp r7, #0
	beq %8
	ldrh r3, [r4, #4]
	str r7, [sp]
	ldr r0, [r5, #8]
	movs r2, #1
	lsls r2, r0
	ldr r0, [r5, #0x6c]
	ldr r1, [sp, #8]
	subs r2, #1
	bl sub_80130DC
	strh r0, [r4, #4]
	ldr r0, [r4]
	subs r0, r0, r7
	str r0, [r4]
	b %9
8
	movs r0, #4
	str r0, [r5, #0x5c]
	ldr r1, [r5, #8]
	movs r0, #1
	lsls r0, r1
	str r0, [r4]
9
	movs r2, #1
	ldr r1, [r5, #0x6c]
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r0, [r4, #8]
	ldr r1, [r1, #0x20]
	ldr r2, [sp, #4]
	subs r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #8]
	cmp r6, #0
	ble %11
	movs r0, #0
10
	ldrh r1, [r4, #4]
	ldr r3, [r5, #8]
	movs r2, #1
	lsls r2, r3
	subs r2, #1
	ands r1, r2
	lsrs r1, r1, #1
	ldr r2, [sp, #8]
	lsls r1, r1, #1
	strh r0, [r2, r1]
	ldrh r1, [r4, #4]
	subs r6, #2
	adds r1, #2
	strh r1, [r4, #4]
	cmp r6, #0
	bgt %10
11
	adds r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800F87A
sub_800F87A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x5c]
	movs r6, #1
	cmp r0, #4
	beq %17
	bgt %12
	cmp r0, #1
	beq %14
	cmp r0, #2
	bne %22
	ldr r1, [r4]
	ldr r5, [r4, #0x10]
	ldr r2, [r1, #0x18]
	adds r0, r4, #0
	adds r1, r2, r1
	bl __call_via_r1
	bics r0, r6
	str r0, [r4, #0x10]
	cmp r0, r5
	bls %15
	subs r1, r0, r5
	b %16
12
	cmp r0, #8
	bne %22
	movs r0, #0
13
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
14
	ldr r0, [r4, #0x68]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	adds r0, r4, #0
	bl sub_800FE3A
	movs r0, #2
	str r0, [r4, #0x5c]
	b %22
15
	ldr r1, [r4, #8]
	lsls r6, r1
	subs r1, r6, r5
	adds r1, r1, r0
16
	adds r0, r4, #0
	bl sub_800F7D6
	b %22
17
	adds r0, r4, #0
	ldm r4!, {r1, r5}
	ldr r2, [r1, #0x18]
	subs r4, #8
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r2, [r1, #4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	cmp r2, r0
	bhs %18
	subs r0, r0, r2
	b %19
18
	ldr r7, [r4, #8]
	adds r3, r6, #0
	lsls r3, r7
	subs r2, r3, r2
	adds r0, r2, r0
19
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r2, [r1]
	subs r0, #0x20
	cmp r2, r0
	bhs %20
	adds r0, r2, #0
	movs r3, #8
	str r3, [r4, #0x5c]
20
	subs r2, r2, r0
	str r2, [r1]
	cmp r0, #0
	ble %22
21
	ldr r7, [r4, #8]
	movs r3, #1
	ldrh r2, [r1, #4]
	lsls r3, r7
	subs r3, #1
	ands r2, r3
	lsrs r2, r2, #1
	lsls r2, r2, #1
	movs r6, #0
	strh r6, [r5, r2]
	ldrh r2, [r1, #4]
	subs r0, #2
	adds r2, #2
	strh r2, [r1, #4]
	cmp r0, #0
	bgt %21
22
	movs r0, #1
	b %13

	thumb_func_start sub_800F944
sub_800F944
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r0, #0
	adds r0, #0x80
	strh r5, [r0, #4]
	ldr r1, [r4, #0x7c]
	str r1, [r0]
	ldr r1, [r4, #0x78]
	str r1, [r0, #8]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #9
	ldr r0, [r4, #0x78]
	adds r2, r2, r1
	str r0, [r2, #0x20]
	ldr r0, [r4, #0x6c]
	adds r0, r0, r1
	str r5, [r0, #0x1c]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F974
sub_800F974
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r0, #0
	movs r3, #0
	adds r5, #0x80
	strh r3, [r5, #4]
	ldr r0, [r0, #0x7c]
	str r0, [r5]
	ldr r0, [r4, #0x78]
	str r0, [r5, #8]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r2, #1
	ldr r1, [r4, #0x6c]
	lsls r2, r2, #9
	ldr r0, [r4, #0x78]
	adds r1, r1, r2
	str r0, [r1, #0x20]
	ldr r1, [r4, #0x6c]
	movs r0, #0
	adds r1, r1, r2
	str r0, [r1, #0x1c]
	cmp r6, #0
	beq %26
	adds r0, r6, #0
	movs r1, #0
	ldr r2, [r4, #0x60]
	bl __16_ll_mulls
	movs r2, #8
	bl __16_ll_ushift_r
	ldr r1, [r4, #0x7c]
	lsrs r6, r0, #1
	lsls r6, r6, #1
	cmp r1, r6
	str r1, [sp]
	bhi %24
	movs r3, #0
	str r3, [r5]
23
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
24
	adds r0, r6, #0
	bl sub_804061C
	adds r7, r0, #0
	lsls r0, r1, #6
	adds r0, r0, r1
	ldr r1, [sp]
	lsls r0, r0, #6
	subs r1, r1, r6
	str r1, [r5]
	ldr r1, [r4, #0x78]
	movs r2, #1
	adds r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x6c]
	lsls r2, r2, #9
	adds r1, r1, r2
	str r0, [r1, #0x20]
	cmp r7, #0
	beq %25
	ldr r0, _0800FA3C
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r2, [r5]
	movs r3, #0
	bl sub_800529A
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_800F7D6
25
	ldr r0, [r4, #0x7c]
	subs r0, r0, r6
	str r0, [r5]
26
	movs r6, #0
	strh r6, [r5, #4]
	ldr r0, _0800FA3C
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r2, [r5]
	adds r3, r6, #0
	bl sub_800529A
	movs r5, #1
	ldr r0, [r4, #8]
	adds r1, r5, #0
	lsls r1, r0
	adds r0, r4, #0
	bl sub_800F7D6
	str r5, [r4, #0x5c]
	str r6, [r4, #0x10]
	b %23
	ALIGN
_0800FA38 DCDU __VTABLE__314dword_803E5C8
_0800FA3C DCDU gUnknown_03003E84
	END
