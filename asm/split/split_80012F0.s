	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT sub_800069A
	IMPORT sub_8000948
	IMPORT sub_800C55E
	IMPORT sub_800C93A
	IMPORT sub_800CAE2
	IMPORT sub_8018110
	IMPORT sub_8018160
	IMPORT sub_801819E
	IMPORT __call_via_r1
	IMPORT sub_8040550

	thumb_func_start sub_80012F0
sub_80012F0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r3, #0x67
	lsls r3, r3, #6
	adds r1, #0x40
	movs r2, #0
	strh r2, [r1, #0x1c]
	adds r4, r0, r3
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne %1
	strh r2, [r1, #0x1a]
	b %2
1
	strh r0, [r1, #0x1a]
	ldrh r1, [r4, #8]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x1c]
2
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8001338
sub_8001338
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r3, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r2, [r0, #0x1a]
	cmp r1, r3
	bne %3
	strh r2, [r4, #8]
	b %5
3
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq %4
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x1a]
4
	ldrh r2, [r0, #0x1a]
	cmp r2, #0
	beq %5
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x1c]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x1c]
5
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800138E
sub_800138E
	push {r3, r4, r5, lr}
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne %7
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3
7
	lsls r3, r0, #1
	adds r0, r3, r0
	ldr r2, [r4]
	ldrh r4, [r4, #0xa]
	lsls r0, r0, #5
	adds r3, r2, r0
	movs r0, #0
	cmp r4, #0
	ble %10
8
	cmp r3, r1
	bne %9
	subs r0, r3, r2
	bl sub_8040550
	adds r0, r1, #0
	b %6
9
	adds r3, #0x40
	ldrh r5, [r3, #0x1a]
	adds r0, #1
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #5
	adds r3, r2, r3
	cmp r4, r0
	bgt %8
10
	movs r0, #0
	b %6

	thumb_func_start sub_80013D8
sub_80013D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0x40
	movs r2, #0
	strh r2, [r0, #0x16]
	ldrh r1, [r4, #0xe]
	adds r1, #1
	strh r1, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	bne %11
	strh r2, [r0, #0x18]
	b %12
11
	strh r1, [r0, #0x18]
	ldrh r1, [r4, #0xc]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x16]
12
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8001432
sub_8001432
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r2, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x40
	cmp r1, r2
	bne %13
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #0xc]
	b %15
13
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	beq %14
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	ldrh r2, [r0, #0x18]
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x18]
14
	ldrh r2, [r0, #0x18]
	cmp r2, #0
	beq %15
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x16]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x16]
15
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800149A
sub_800149A
	push {r3, r4, r5, lr}
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne %17
16
	pop {r3, r4, r5}
	pop {r3}
	bx r3
17
	lsls r3, r0, #1
	adds r0, r3, r0
	ldr r2, [r4]
	ldrh r4, [r4, #0xe]
	lsls r0, r0, #5
	adds r3, r2, r0
	movs r0, #0
	cmp r4, #0
	ble %20
18
	cmp r3, r1
	bne %19
	subs r0, r3, r2
	bl sub_8040550
	adds r0, r1, #0
	b %16
19
	adds r3, #0x40
	ldrh r5, [r3, #0x18]
	adds r0, #1
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #5
	adds r3, r2, r3
	cmp r4, r0
	bgt %18
20
	movs r0, #0
	b %16

	thumb_func_start sub_80014E4
sub_80014E4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r7, r0
	ldr r0, [r5, #0x28]
	lsls r1, r0, #0xd
	bmi %31
	movs r1, #1
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x28]
	ldrh r6, [r5, #0xe]
	cmp r6, #0
	beq %22
	lsls r0, r0, #0xb
	bpl %22
	ldrh r1, [r5, #0xc]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	subs r6, #1
	blo %22
21
	adds r0, r4, #0
	bl sub_8000948
	adds r4, #0x40
	ldrh r1, [r4, #0x18]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	subs r6, #1
	bhs %21
22
	ldrh r1, [r5, #4]
	cmp r1, #0
	beq %29
	lsls r3, r1, #1
	ldr r0, [r5]
	ldrh r6, [r5, #6]
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	subs r6, #1
	blo %28
23
	ldr r0, [r4]
	lsls r1, r0, #0x1e
	bpl %25
	lsls r0, r0, #0x17
	bmi %24
	ldr r0, _080017C8
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x14
	bpl %25
24
	adds r0, r4, #0
	bl sub_800069A
	movs r1, #0xff
	ldr r0, [r4]
	adds r1, #1
	bics r0, r1
	str r0, [r4]
25
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl %26
	adds r4, #0x40
	ldrh r1, [r4, #0x14]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	b %27
26
	ldr r0, _080017CC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800C55E
	adds r4, #0x40
	ldrh r1, [r4, #0x14]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
27
	subs r6, #1
	bhs %23
28
	ldr r0, _080017CC
	ldr r0, [r0]
	bl sub_800CAE2
29
	movs r1, #1
	ldr r0, [r5, #0x28]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x28]
	lsls r0, r0, #0xe
	bpl %30
	ldr r0, _080017CC
	ldr r0, [r0]
	bl sub_800C93A
	movs r1, #1
	ldr r0, [r5, #0x28]
	lsls r1, r1, #0x11
	bics r0, r1
	str r0, [r5, #0x28]
30
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r7, r0
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq %31
	b %32
31
	b %33
32
	ldr r0, [r0, #0x38]
	bl __call_via_r1
33
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80015E6
sub_80015E6
	movs r3, #0x33
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r0, #0x34
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_80015F2
sub_80015F2
	push {r4, r5, r6}
	adds r4, r2, #0
	adds r6, r3, #0
	movs r3, #0
	movs r2, #0
	adds r5, r1, #0
	stm r1!, {r2, r3}
	movs r1, #0
	stm r4!, {r1, r2, r3}
	stm r4!, {r2, r3}
	ldrh r1, [r6]
	subs r4, #0x14
	ldr r2, [r4, #4]
	movs r3, #0xff
	lsrs r1, r1, #2
	adds r1, #0xff
	lsls r3, r3, #4
	bics r2, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	orrs r1, r2
	str r1, [r4, #4]
	ldrh r2, [r6, #2]
	lsls r3, r3, #8
	bics r1, r3
	lsrs r2, r2, #2
	adds r2, #0xff
	lsls r2, r2, #0x18
	lsrs r2, r2, #0xc
	orrs r1, r2
	ldr r2, [r4, #0xc]
	ldr r3, _080017D0
	orrs r2, r3
	str r2, [r4, #0xc]
	lsls r2, r3, #4
	orrs r1, r2
	lsrs r1, r1, #4
	lsls r1, r1, #4
	ldr r2, [r4]
	ldr r3, _080017D4
	adds r1, #8
	str r1, [r4, #4]
	orrs r2, r3
	str r2, [r4]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r3, _080017D8
	ldr r6, _080017DC
	muls r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1d
	adds r1, r2, r1
	ldr r2, [r4, #8]
	asrs r1, r1, #3
	lsls r1, r1, #0xc
	lsrs r2, r2, #0x14
	lsls r2, r2, #0x14
	lsrs r1, r1, #0xc
	orrs r1, r2
	str r1, [r4, #8]
	movs r2, #0x67
	lsls r2, r2, #6
	ldrh r1, [r0, #0xe]
	adds r0, r0, r2
	ldr r2, [r0, #0x18]
	adds r1, r1, r2
	ldr r2, [r5]
	lsls r1, r1, #0x10
	lsrs r2, r2, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x10
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, [r5, #4]
	ands r1, r6
	ands r2, r3
	lsls r2, r2, #0xb
	lsrs r2, r2, #0xb
	str r2, [r5, #4]
	ldr r3, [r4, #4]
	lsrs r2, r2, #0xa
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x18
	lsls r3, r3, #2
	adds r3, #4
	lsls r3, r3, #0x16
	lsrs r3, r3, #1
	orrs r1, r3
	str r1, [r5]
	ldr r1, [r4, #4]
	lsls r2, r2, #0xa
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	orrs r1, r2
	str r1, [r5, #4]
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	lsls r3, r2, #1
	ldrh r3, [r1, r3]
	str r3, [r0, #0x18]
	asrs r0, r6, #0x1f
	lsls r2, r2, #1
	strh r0, [r1, r2]
	pop {r4, r5, r6}
	bx lr

	thumb_func_start sub_80016D8
sub_80016D8
	push {r4}
	ldr r3, [r1]
	ldrh r2, [r0, #0xe]
	lsrs r4, r3, #0x10
	lsls r4, r4, #0x10
	subs r2, r3, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r4
	movs r3, #0x67
	lsls r3, r3, #6
	str r2, [r1]
	adds r0, r0, r3
	ldr r3, [r0, #0x18]
	ldr r4, [r0, #0x1c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xf
	strh r3, [r4, r2]
	ldr r2, [r1]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [r0, #0x18]
	ldr r0, [r1]
	ldr r2, _080017E0
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	bx lr

	thumb_func_start sub_8001710
sub_8001710
	adds r2, r0, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r1, r2, r1
	push {r4}
	ldr r3, [r1, #0x20]
	adds r2, #0x60
	ldrh r2, [r2, #0x1a]
	ldr r0, [r0, #0x34]
	lsls r4, r3, #4
	adds r0, r0, r4
	subs r3, r3, r2
	movs r2, #0
	mvns r2, r2
	str r2, [r0, #8]
	ldr r2, [r1, #0x24]
	lsls r3, r3, #1
	ldrh r4, [r2, r3]
	str r4, [r1, #0x20]
	movs r1, #0
	mvns r1, r1
	strh r1, [r2, r3]
	pop {r4}
	bx lr

	thumb_func_start sub_8001740
sub_8001740
	push {r4, r5}
	adds r4, r1, #0
	ldr r1, [r1]
	ldr r2, [r0, #0x34]
	subs r1, r1, r2
	movs r2, #0x67
	lsls r2, r2, #6
	adds r2, r0, r2
	adds r0, #0x60
	ldrh r0, [r0, #0x1a]
	asrs r1, r1, #4
	ldr r3, [r2, #0x20]
	ldr r5, [r2, #0x24]
	subs r0, r1, r0
	lsls r0, r0, #1
	strh r3, [r5, r0]
	str r1, [r2, #0x20]
	ldr r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r0, #0
	str r0, [r4]
	pop {r4, r5}
	bx lr

	non_word_aligned_thumb_func_start nullsub_20
nullsub_20
	bx lr

	thumb_func_start sub_8001778
sub_8001778
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, [r6, #0x34]
	ldr r0, [r1, #8]
	adds r4, r1, #0
	lsls r1, r3, #4
	adds r5, r1, r2
	ldm r5!, {r1, r2, r3}
	sub sp, #0x14
	stm r4!, {r1, r2, r3}
	ldm r5!, {r3}
	movs r1, #0xf0
	stm r4!, {r3}
	subs r4, #0x10
	str r0, [r4, #8]
	ldr r0, [r4]
	subs r5, #0x10
	bics r0, r1
	adds r0, #0x60
	str r0, [r4]
	mov r0, sp
	mov r7, sp
	bl sub_8018110
	ldr r0, [r6, #0x38]
	ldr r1, [r5, #8]
	adds r2, r4, #0
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r0, r7, #0
	bl sub_801819E
	movs r1, #0
	adds r0, r7, #0
	bl sub_8018160
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080017C8 DCDU gUnknown_03003EA4
_080017CC DCDU gUnknown_03003EA0
_080017D0 DCDU 0xFFFF0000
_080017D4 DCDU 0x0FFFFFFF
_080017D8 DCDU 0xFFE003FF
_080017DC DCDU 0x801FFFFF
_080017E0 DCDU 0x0000FFFF
	END
