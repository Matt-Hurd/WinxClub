	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT __VTABLE__328dword_803E870
	IMPORT nullsub_5
	IMPORT nullsub_6
	IMPORT sub_800FB48
	IMPORT sub_800FB72
	IMPORT sub_800FE3A
	IMPORT sub_8012468
	IMPORT __call_via_r1
	IMPORT __16__rt_memclr_w
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DAC0

	thumb_func_start sub_800F1E8
sub_800F1E8
	push {r4}
	movs r1, #0x11
	lsls r1, r1, #0xb
	str r1, [r0]
	movs r1, #0
	movs r4, #1
	movs r3, #0
1
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x18]
	adds r1, #1
	cmp r1, #1
	str r4, [r2, #4]
	blo %1
	movs r1, #0
2
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x10]
	str r4, [r2, #8]
	adds r2, r0, r1
	adds r2, #0x70
	adds r1, #1
	cmp r1, #2
	strb r3, [r2, #0xc]
	blo %2
	str r3, [r0, #0x34]
	pop {r4}
	bx lr

	thumb_func_start sub_800F220
sub_800F220
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	bl __16__rt_memclr_w
	movs r0, #0x11
	lsls r0, r0, #0xb
	str r0, [r4]
	movs r0, #0
	movs r3, #1
	movs r2, #0
3
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x18]
	adds r0, #1
	cmp r0, #1
	str r3, [r1, #4]
	blo %3
	movs r0, #0
4
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x10]
	str r3, [r1, #8]
	adds r1, r4, r0
	adds r1, #0x70
	adds r0, #1
	cmp r0, #2
	strb r2, [r1, #0xc]
	blo %4
	str r2, [r4, #0x34]
	pop {r4}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_800F264
sub_800F264
	push {r4, lr}
	adds r4, r0, #0
	bne %6
	movs r0, #0x78
	bl __nw__FUi
	adds r4, r0, #0
	bne %6
	adds r0, r4, #0
5
	pop {r4}
	pop {r3}
	bx r3
6
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800F4E8
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	b %5

	non_word_aligned_thumb_func_start sub_800F292
sub_800F292
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800F4E8
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq %7
	adds r0, r4, #0
	bl sub_803DA18
7
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F2B4
sub_800F2B4
	movs r0, #0x98
	bx lr

	thumb_func_start sub_800F2B8
sub_800F2B8
	str r1, [r0, #0x70]
	bx lr

	thumb_func_start sub_800F2BC
sub_800F2BC
	push {r3, lr}
	ldr r1, [r0, #0x74]
	cmp r1, #0
	beq %8
	ldr r2, [r0, #0x70]
	adds r2, #0x80
	ldr r2, [r2, #0x10]
	cmp r2, #0
	beq %8
	ldr r0, [r0, #0x5c]
	lsls r0, r0, #0x1e
	beq %8
	ldr r0, _0800F4EC
	ldr r0, [r0]
	bl nullsub_5
8
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800F2E2
sub_800F2E2
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r1, r0
	bhs %10
	subs r0, r0, r1
9
	pop {r4}
	pop {r3}
	bx r3
10
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	adds r0, r1, r0
	b %9

	non_word_aligned_thumb_func_start sub_800F312
sub_800F312
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	adds r5, r1, #0
	adds r0, #0x80
	ldr r1, [r0, #0x10]
	movs r6, #0
	cmp r1, r5
	bhs %11
	subs r6, r5, r1
	adds r5, r1, #0
11
	cmp r1, #0
	beq %14
	ldr r0, _0800F4EC
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	bl sub_803DAC0
	str r0, [sp]
	ldr r1, [r4, #0x70]
	str r0, [r1, #0x2c]
	ldr r0, [r4, #0x70]
	movs r1, #1
	mov ip, r0
	adds r0, #0x80
	ldr r0, [r0, #0xc]
	ldr r3, [r4, #8]
	adds r2, r0, r5
	lsls r1, r3
	cmp r2, r1
	bls %12
	subs r2, r1, r0
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	bl sub_8012468
	ldr r0, [r4, #0x70]
	movs r1, #0x8c
	ldr r1, [r1, r0]
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	subs r2, r5, r1
	adds r1, r7, #0
	bl sub_8012468
	ldr r0, [r4, #8]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r2, [r0, #0xc]
	subs r1, r1, r2
	subs r1, r5, r1
	str r1, [r0, #0xc]
	b %13
12
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	adds r2, r5, #0
	bl sub_8012468
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #8]
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r3, #1
	lsls r3, r2
	adds r1, r1, r5
	subs r3, #1
	ands r1, r3
	str r1, [r0, #0xc]
13
	ldr r0, [r4, #0x70]
	adds r0, #0x90
	ldr r1, [r0]
	subs r1, r1, r5
	str r1, [r0]
	ldr r1, [r4, #0x70]
	ldr r0, [r4, #0x74]
	ldr r1, [r1, #0x2c]
	ldr r2, [sp]
	subs r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #0x74]
	b %15
14
	movs r1, #4
	str r1, [r4, #0x5c]
	ldr r2, [r4, #8]
	movs r1, #1
	lsls r1, r2
	str r1, [r0, #0x10]
	movs r5, #0
15
	cmp r6, #0
	ble %17
	movs r0, #0
16
	ldr r1, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r2, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r2, r3
	subs r2, #1
	ands r1, r2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r0, [r7, r1]
	ldr r1, [r4, #0x70]
	subs r6, #2
	adds r1, #0x8c
	ldr r2, [r1]
	adds r2, #2
	str r2, [r1]
	cmp r6, #0
	bgt %16
17
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800F408
sub_800F408
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x5c]
	movs r6, #1
	cmp r0, #4
	beq %23
	bgt %18
	cmp r0, #1
	beq %20
	cmp r0, #2
	bne %28
	ldr r1, [r4]
	ldr r5, [r4, #0x10]
	ldr r2, [r1, #0x18]
	adds r0, r4, #0
	adds r1, r2, r1
	bl __call_via_r1
	bics r0, r6
	str r0, [r4, #0x10]
	cmp r0, r5
	bls %21
	subs r1, r0, r5
	b %22
18
	cmp r0, #8
	bne %28
	movs r0, #0
19
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	ldr r0, [r4, #0x68]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	adds r0, r4, #0
	bl sub_800FE3A
	movs r0, #2
	str r0, [r4, #0x5c]
	b %28
21
	ldr r1, [r4, #8]
	lsls r6, r1
	subs r1, r6, r5
	adds r1, r1, r0
22
	adds r0, r4, #0
	bl sub_800F312
	b %28
23
	adds r0, r4, #0
	ldm r4!, {r1, r5}
	ldr r2, [r1, #0x18]
	subs r4, #8
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	str r1, [sp]
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsls r0, r0, #1
	cmp r2, r0
	bhs %24
	subs r0, r0, r2
	b %25
24
	ldr r7, [r4, #8]
	adds r3, r6, #0
	lsls r3, r7
	subs r2, r3, r2
	adds r0, r2, r0
25
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r1, [r1, #0x10]
	subs r0, #0x20
	cmp r1, r0
	bhs %26
	adds r0, r1, #0
	movs r1, #8
	str r1, [r4, #0x5c]
26
	ldr r1, [sp]
	adds r1, #0x90
	ldr r2, [r1]
	subs r2, r2, r0
	str r2, [r1]
	cmp r0, #0
	ble %28
	movs r1, #0
27
	ldr r2, [r4, #0x70]
	ldr r7, [r4, #8]
	adds r3, r6, #0
	adds r2, #0x80
	ldr r2, [r2, #0xc]
	lsls r3, r7
	subs r3, #1
	ands r2, r3
	lsrs r2, r2, #1
	lsls r2, r2, #1
	strh r1, [r5, r2]
	ldr r2, [r4, #0x70]
	subs r0, #2
	adds r2, #0x8c
	ldr r3, [r2]
	adds r3, #2
	str r3, [r2]
	cmp r0, #0
	bgt %27
28
	adds r0, r4, #0
	bl nullsub_6
	movs r0, #1
	b %19
	ALIGN
_0800F4E8 DCDU __VTABLE__328dword_803E870
_0800F4EC DCDU gUnknown_03003E84
	END
