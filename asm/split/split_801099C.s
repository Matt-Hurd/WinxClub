	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_80103EC
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __16__rt_sdiv
	IMPORT sub_803DABC
	IMPORT sub_803DAC0

	thumb_func_start sub_801099C
sub_801099C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r6, #0
	movs r4, #0
	cmp r1, #0
	ldr r5, [r0, #4]
	bls %2
1
	ldr r0, _08010D58
	movs r3, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x10
	lsls r2, r0, #0x13
	adds r6, r1, r6
	adds r1, r5, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r5, r0, r1
	adds r4, #1
	cmp r4, r7
	blo %1
2
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80109DE
sub_80109DE
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x5c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #1
	bx lr

	thumb_func_start sub_80109EC
sub_80109EC
	movs r1, #0x54
	ldrb r1, [r1, r0]
	movs r2, #0x19
	lsls r2, r2, #6
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0x60]
	lsrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8010A0A
sub_8010A0A
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	movs r5, #0
	adds r4, r0, #0
	mvns r0, r5
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x10]
	movs r6, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	beq %6
3
	ldr r0, _08010D58
	movs r3, #0
	movs r2, #8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	ldr r1, [r1, #4]
	ldr r0, [r0]
	mov ip, r1
	ldr r1, [r4, #0x6c]
	ldr r3, [r4, #0x74]
	adds r2, r1, #0
	adds r1, #1
	lsrs r0, r0, #0x10
	adds r0, r0, r5
	cmp r1, r3
	mov lr, r1
	bge %4
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	cmp r1, r0
	bhi %4
	mov r1, lr
	str r1, [r4, #0x6c]
4
	ldr r1, [sp, #4]
	cmp r1, r5
	blo %5
	ldr r1, [sp, #4]
	cmp r1, r0
	bhs %5
	str r5, [r4, #0x68]
	str r5, [r4, #0x64]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r6
	str r0, [r4, #0x5c]
	b %6
5
	mov r2, ip
	lsls r2, r2, #0x13
	adds r1, r7, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	adds r1, r2, r1
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	mov r2, ip
	lsrs r2, r2, #0xd
	lsls r2, r2, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r2, r1
	adds r6, #1
	cmp r0, r6
	bhi %3
6
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %7
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_80103EC
7
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8010AB4
sub_8010AB4
	push {r4, r5, r6, lr}
	ldr r4, [r0, #0x74]
	cmp r4, #0
	beq %8
	adds r3, r1, #1
	bne %9
8
	movs r2, #0
	mvns r2, r2
	ldr r1, [r0, #4]
	str r2, [r0, #0x6c]
	movs r2, #0
	str r2, [r0, #0x68]
	str r2, [r0, #0x64]
	ldr r2, [r0, #0x10]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [r0, #0x5c]
	b %13
9
	cmp r4, r1
	bgt %10
	subs r1, r4, #1
10
	str r1, [r0, #0x6c]
	lsls r3, r1, #1
	adds r3, r3, r1
	ldr r6, [r0, #0x70]
	lsls r3, r3, #2
	adds r5, r1, #0
	ldr r1, [r6, r3]
	adds r3, r6, r3
	ldr r6, [r3, #4]
	lsls r6, r6, #0xe
	lsrs r6, r6, #0xe
	str r6, [r0, #0x64]
	ldr r6, [r3, #4]
	lsls r6, r6, #0xe
	lsrs r6, r6, #0xe
	str r6, [r0, #0x68]
	cmp r2, #0
	beq %12
	subs r4, #1
	cmp r4, r5
	bne %11
	ldr r2, [r3, #4]
	ldr r3, [r0, #0x10]
	lsrs r2, r2, #0x12
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r2, r3, r2
	str r2, [r0, #0x5c]
	b %13
11
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #4]
	lsrs r2, r2, #0x12
	lsrs r3, r3, #0x12
	subs r2, r2, r3
	str r2, [r0, #0x5c]
	b %13
12
	ldr r2, [r3, #4]
	ldr r3, [r0, #0x10]
	lsrs r2, r2, #0x12
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r2, r3, r2
	str r2, [r0, #0x5c]
13
	bl sub_80103EC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010B3E
sub_8010B3E
	push {r4}
	ldr r2, [r0, #0x58]
	ldr r3, [r0, #0x7c]
	movs r4, #0x80
	ldr r4, [r4, r0]
	muls r2, r1
	adds r3, r3, r2
	ands r3, r4
	str r3, [r0, #0x7c]
	movs r3, #0x1b
	lsls r3, r3, #6
	adds r3, r0, r3
	ldr r4, [r3, #0x3c]
	adds r2, r4, r2
	str r2, [r3, #0x3c]
	ldr r2, [r0, #0x60]
	subs r2, r2, r1
	str r2, [r0, #0x60]
	ldr r2, [r0, #0x64]
	adds r1, r2, r1
	str r1, [r0, #0x64]
	pop {r4}
	bx lr

	thumb_func_start sub_8010B6C
sub_8010B6C
	push {r3, lr}
	ldr r1, [r0, #0x64]
	ldr r2, [r0, #0x68]
	movs r3, #0x7d
	lsls r3, r3, #3
	subs r1, r1, r2
	ldr r0, [r0, #0xc]
	muls r1, r3
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	bl __16__rt_sdiv
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010B8A
sub_8010B8A
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #7
	lsls r0, r0, #8
	adds r2, r0, #0
	adds r4, r7, r0
	movs r1, #0
	str r1, [sp, #0x28]
	ldr r1, [r4]
	ldr r0, _08010D58
	subs r2, #0x40
	adds r5, r7, #0
	adds r5, #0x94
	adds r6, r7, r2
	cmp r1, #0
	ldr r0, [r0]
	bgt %19
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x34]
	cmp r1, r2
	blt %15
	movs r0, #0
14
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
15
	movs r1, #0x6f
	lsls r1, r1, #4
	adds r1, r7, r1
	cmp r2, #0
	bne %16
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	b %14
16
	subs r2, #1
	str r2, [r6, #0x34]
	ldrb r2, [r1]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r1]
	cmp r2, #0xb
	blo %17
	movs r3, #0
	strb r3, [r1]
17
	ldrb r1, [r1]
	ldr r2, _08010D5C
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r7
	adds r1, r1, r2
	str r1, [sp, #0x20]
	ldr r2, [r1]
	cmp r2, #0
	bne %18
	movs r0, #0
	str r0, [r6, #0x3c]
	b %14
18
	ldr r1, [sp, #0x20]
	ldr r1, [r1, #8]
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x11
	adds r2, r2, r3
	adds r2, #8
	str r2, [sp, #0x1c]
	lsrs r1, r1, #0xd
	lsls r2, r1, #2
	ldr r1, [sp, #0x1c]
	movs r3, #0
	bl sub_800529A
	ldr r0, _08010D58
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	bl sub_803DAC0
	str r0, [sp, #0x18]
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	adds r2, r1, r0
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl __call_via_r2
	str r0, [r4]
	str r0, [r4, #4]
	mov r0, sp
	bl sub_8008008
	ldr r0, [sp, #0x18]
	add r3, sp, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #8]
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x78]
	str r0, [sp, #8]
	movs r0, #2
	strb r0, [r3, #0xc]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x38]
	str r0, [sp, #0x14]
	ldr r0, [r5]
	ldr r1, [r0, #8]
	adds r2, r1, r0
	mov r1, sp
	adds r0, r5, #0
	bl __call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x24]
	adds r1, r1, r0
	adds r0, r5, #0
	bl __call_via_r1
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	subs r1, r1, r0
	str r1, [r4, #8]
	ldr r2, [sp, #0x1c]
	adds r1, r2, r0
	b %20
19
	b %21
20
	str r1, [r4, #0xc]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	str r0, [sp, #0x24]
	b %22
21
	ldr r2, [r4, #8]
	cmp r2, #0
	beq %22
	movs r3, #0
	ldr r1, [r4, #0xc]
	bl sub_800529A
	ldr r1, [r4, #0xc]
	ldr r0, _08010D58
	str r1, [sp, #0x28]
	ldr r0, [r0]
	bl sub_803DAC0
	str r0, [sp, #0x24]
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	bl __call_via_r2
22
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	bgt %23
	movs r0, #0
	b %14
23
	ldr r1, [r4, #8]
	movs r0, #0
	cmp r1, #0
	beq %24
	ldr r0, _08010D58
	adds r2, r1, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	bl sub_803DABC
24
	ldr r1, [r4, #8]
	adds r2, r0, #0
	cmp r1, r0
	bls %25
	subs r2, #8
25
	cmp r2, #0
	bne %26
	movs r2, #1
26
	ldr r1, [r6, #0x38]
	str r1, [sp, #0x20]
	ldr r0, [r5]
	ldr r1, [r0, #0xc]
	adds r3, r1, r0
	ldr r1, [r6, #0x3c]
	adds r0, r5, #0
	bl __call_via_r3
	ldr r0, [r5, #0xc]
	str r0, [r6, #0x38]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	blo %27
	ldr r1, [sp, #0x20]
	subs r7, r0, r1
	b %28
27
	adds r7, #0x80
	ldr r1, [r7]
	ldr r2, [sp, #0x20]
	adds r1, #1
	subs r1, r1, r2
	adds r7, r0, r1
28
	ldr r0, [r5]
	ldr r1, [r0, #0x24]
	adds r1, r1, r0
	adds r0, r5, #0
	bl __call_via_r1
	ldr r1, [sp, #0x24]
	subs r0, r0, r1
	ldr r1, [r4, #8]
	subs r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	ldr r0, [r4]
	subs r0, r0, r7
	str r0, [r4]
	ldr r0, [r6, #0x3c]
	subs r0, r0, r7
	str r0, [r6, #0x3c]
	movs r0, #1
	b %14
	ALIGN
_08010D58 DCDU gUnknown_03003E84
_08010D5C DCDU 0x0000064C
	END
