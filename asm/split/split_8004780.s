	INCLUDE asm/macros.inc
	INCLUDE asm/gba_constants.inc
	AREA text, CODE

	IMPORT gUnknown_03003E80
	IMPORT __VTABLE__317dword_803E67C
	IMPORT __VTABLE__355dword_803ECBC
	IMPORT __16__rt_memclr_w
	IMPORT __16__rt_memcpy
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_8004780
sub_8004780
	lsrs r0, r0, #0x1e
	bx lr

	thumb_func_start sub_8004784
sub_8004784
	ldrh r3, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	lsrs r3, r3, #6
	lsls r3, r3, #6
	orrs r1, r3
	movs r3, #0x3f
	lsls r3, r3, #8
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x12
	bics r1, r3
	orrs r1, r2
	strh r1, [r0]
	bx lr

	thumb_func_start sub_80047A0
sub_80047A0
	ldrh r0, [r0]
	cmp r1, #0
	beq %1
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	b %2
1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	non_word_aligned_thumb_func_start sub_80047B6
sub_80047B6
	strh r1, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80047BA
sub_80047BA
	ldrh r0, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80047BE
sub_80047BE
	ldrh r3, [r0, #2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	lsrs r3, r3, #5
	lsls r3, r3, #5
	orrs r1, r3
	movs r3, #0x1f
	lsls r3, r3, #8
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	bics r1, r3
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start sub_80047DA
sub_80047DA
	ldrh r0, [r0, #2]
	cmp r1, #0
	beq %3
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bx lr
3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	bx lr

	thumb_func_start sub_80047EC
sub_80047EC
	push {r3, lr}
	cmp r0, #0
	bne %4
	movs r0, #0x14
	bl __nw__FUi
	cmp r0, #0
	beq %5
4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strb r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
5
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004812
sub_8004812
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	cmp r0, #0
	beq %6
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
6
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #0x12]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004836
sub_8004836
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq %7
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %7
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
7
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #0x12]
	cmp r5, #0
	beq %8
	adds r0, r4, #0
	bl sub_803DA18
8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004866
sub_8004866
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	beq %9
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %9
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
9
	movs r3, #0
	str r3, [r4]
	lsls r1, r6, #1
	cmp r5, #0
	strh r3, [r4, #0x12]
	beq %10
	str r5, [r4]
	strb r3, [r4, #0x10]
	adds r0, r5, #0
	bl __16__rt_memclr_w
	b %11
10
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4]
	movs r0, #1
	strb r0, [r4, #0x10]
11
	strh r6, [r4, #0x12]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80048B0
sub_80048B0
	adds r1, r0, #0
	ldrh r1, [r1, #8]
	movs r0, #1
	cmp r1, #0
	bne %12
	movs r0, #0
12
	bx lr

	non_word_aligned_thumb_func_start sub_80048BE
sub_80048BE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	beq %13
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %13
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
13
	movs r0, #0
	str r6, [r4]
	strb r0, [r4, #0x10]
	adds r0, r6, r5
	subs r0, #0x20
	strh r5, [r4, #0x12]
	ldrh r0, [r0, #0x1e]
	strh r0, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80048F0
sub_80048F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #0
	bne %15
14
	pop {r4, r5, r6}
	pop {r3}
	bx r3
15
	ldr r0, [r4, #4]
	ldr r1, [r4]
	adds r0, #2
	subs r5, r0, r1
	adds r5, #2
	cmp r6, #0
	beq %16
	subs r2, r5, #2
	adds r0, r6, #0
	bl __16__rt_memcpy
	ldrh r0, [r4, #8]
	adds r1, r6, r5
	subs r1, #0x20
	strh r0, [r1, #0x1e]
16
	adds r0, r5, #0
	b %14

	thumb_func_start sub_8004924
sub_8004924
	push {r3, lr}
	cmp r0, #0
	bne %17
	movs r0, #0x18
	bl __nw__FUi
	cmp r0, #0
	beq %18
17
	ldr r1, _08004B94
	movs r2, #2
	str r1, [r0]
	ldr r1, _08004B98
	str r0, [r1]
	ldr r1, _08004B9C
	str r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	bics r1, r2
	movs r2, #4
	bics r1, r2
	movs r2, #8
	bics r1, r2
	str r1, [r0, #0x14]
18
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800496A
sub_800496A
	push {r3, lr}
	ldr r2, _08004B94
	ldr r3, _08004B98
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %19
	bl sub_803DA18
19
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8004984
sub_8004984
	ldr r1, [r0, #0x14]
	lsls r2, r1, #0x1f
	bpl %20
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0, #0x14]
	b %21
20
	lsls r2, r1, #0x1e
	bpl %21
	movs r2, #2
	bics r1, r2
	str r1, [r0, #0x14]
	ldr r2, [r0, #0x10]
	adds r1, r2, #0
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	adds r1, #8
	subs r2, r3, r2
	strh r2, [r1]
21
	ldr r1, [r0, #0x14]
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_80049B4
sub_80049B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	lsls r1, r0, #0x1c
	bmi %29
	lsls r1, r0, #0x1f
	ldr r2, _08004BA0
	ldr r3, _08004BA4
	bpl %26
	lsls r0, r0, #0x1d
	bmi %26
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq %22
	adds r0, #0xc
	ldrb r1, [r0]
	adds r1, #0xff
	strb r1, [r0]
	b %23
22
	ldr r1, [r0, #4]
	ldrh r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	strh r1, [r0, #0xe]
	ldr r0, [r4, #0x10]
	ldr r1, [r0, #4]
	ldrh r1, [r1]
	lsrs r1, r1, #0xa
	strb r1, [r0, #0xc]
	ldr r0, [r4, #0x10]
	adds r0, #4
	ldr r1, [r0]
	adds r1, #2
	str r1, [r0]
23
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq %24
	ldrh r1, [r3, #0x10]
	eors r1, r2
	ldr r2, [r4, #0x10]
	ldrh r2, [r2, #0xe]
	bics r2, r0
	ands r0, r1
	orrs r2, r0
	adds r5, r2, #0
	b %25
24
	ldr r0, [r4, #0x10]
	ldrh r5, [r0, #0xe]
25
	ldr r0, [r4, #0x10]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne %27
	adds r0, r4, #0
	bl sub_8004984
	b %27
26
	ldrh r5, [r3, #0x10]
	eors r5, r2
27
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq %28
	ldrh r1, [r4, #0xc]
	orrs r5, r1
	subs r0, #1
	strh r0, [r4, #0xa]
28
	ldrh r0, [r4, #4]
	adds r1, r0, #0
	eors r1, r5
	ands r1, r5
	strh r1, [r4, #6]
	bics r0, r5
	strh r0, [r4, #8]
	strh r5, [r4, #4]
	ldr r0, [r4, #0x14]
	lsls r1, r0, #0x1e
	bpl %29
	lsls r0, r0, #0x1d
	bmi %29
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #4]
	ldrh r0, [r2]
	lsls r3, r0, #0x16
	lsrs r3, r3, #0x16
	cmp r3, r5
	bne %31
	lsrs r3, r0, #0xa
	cmp r3, #0x3f
	bne %30
	adds r0, r1, #4
	ldr r1, [r1, #4]
	lsls r2, r5, #0x16
	adds r1, #2
	str r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r2, r2, #0x16
	orrs r1, r2
	strh r1, [r0]
	b %32
29
	b %33
30
	movs r3, #0x3f
	lsls r3, r3, #0xa
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xa
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	strh r0, [r2]
	b %32
31
	adds r0, r1, #4
	ldr r1, [r1, #4]
	lsls r2, r5, #0x16
	adds r1, #2
	str r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r2, r2, #0x16
	orrs r1, r2
	strh r1, [r0]
32
	ldr r0, [r4, #0x10]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne %33
	adds r0, r4, #0
	bl sub_8004984
33
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8004ADC
sub_8004ADC
	movs r1, #0
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_8004AE6
sub_8004AE6
	ldr r2, [r0, #0x14]
	movs r3, #8
	bics r2, r3
	lsls r1, r1, #3
	orrs r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_8004AF4
sub_8004AF4
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8004AFC
sub_8004AFC
	strh r3, [r0, #0xa]
	strh r1, [r0, #0xc]
	bx lr

	non_word_aligned_thumb_func_start sub_8004B02
sub_8004B02
	movs r3, #0
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	strh r3, [r0, #4]
	strh r2, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r2, [r1]
	adds r2, #2
	str r2, [r1, #4]
	ldr r1, [r0, #0x10]
	strb r3, [r1, #0xc]
	ldr r1, [r0, #0x10]
	strh r3, [r1, #0xe]
	ldr r1, [r0, #0x10]
	ldrh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, [r0, #0x14]
	movs r2, #1
	orrs r1, r2
	movs r2, #2
	bics r1, r2
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_8004B38
sub_8004B38
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8004B40
sub_8004B40
	push {r4}
	str r1, [r0, #0x10]
	ldr r3, [r1]
	ldr r4, _08004BA0
	str r3, [r1, #4]
	ldrh r1, [r3]
	orrs r1, r4
	strh r1, [r3]
	ldr r1, [r0, #0x10]
	strh r2, [r1, #8]
	ldr r1, [r0, #0x10]
	strh r2, [r1, #0xa]
	ldr r2, [r0, #0x10]
	movs r1, #0
	strb r1, [r2, #0xc]
	ldr r2, [r0, #0x10]
	strh r1, [r2, #0xe]
	ldr r1, [r0, #0x14]
	movs r2, #2
	orrs r1, r2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_8004B76
sub_8004B76
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bx lr

	non_word_aligned_thumb_func_start sub_8004B7E
sub_8004B7E
	ldr r2, [r0, #0x14]
	movs r3, #4
	bics r2, r3
	lsls r1, r1, #2
	orrs r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_8004B8C
sub_8004B8C
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bx lr
	ALIGN
_08004B94 DCDU __VTABLE__355dword_803ECBC
_08004B98 DCDU gUnknown_03003E80
_08004B9C DCDU __VTABLE__317dword_803E67C
_08004BA0 DCDU 0x000003FF
_08004BA4 DCDU 0x$REG_SIOMULTI0
	END
