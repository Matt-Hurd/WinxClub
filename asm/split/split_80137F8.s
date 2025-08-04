	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EBC
	IMPORT GetEWRAMStart
	IMPORT sub_80133A0
	IMPORT sub_801340A
	IMPORT sub_801357A
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r5
	IMPORT __16__rt_sdiv
	IMPORT __16__rt_udiv
	IMPORT strlen
	IMPORT strncpy
	IMPORT vsprintf
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA9C
	IMPORT sub_80402F8

	thumb_func_start sub_80137F8
sub_80137F8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r7, r2, #0
	movs r6, #0
	adds r5, r1, #0
	cmp r0, #0
	beq %1
	bl __da__FPv
	str r6, [r4, #0x34]
1
	cmp r7, #0
	beq %2
	adds r0, r5, #0
	bl strlen
	lsls r7, r0, #0x10
	lsrs r7, r7, #0x10
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	adds r0, r7, #1
	bl sub_803DA9C
	adds r2, r7, #0
	adds r1, r5, #0
	str r0, [r4, #0x34]
	bl strncpy
	ldr r0, [r4, #0x34]
	strb r6, [r0, r7]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x30]
	b %3
2
	str r5, [r4, #0x30]
3
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq %4
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	adds r1, r5, #0
	bl sub_801340A
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r2, [r0, #0x5c]
	adds r3, r2, r0
	ldr r2, [sp]
	adds r0, r4, #0
	bl __call_via_r3
	movs r0, #1
	str r0, [r4, #0x24]
4
	adds r0, r4, #0
	bl sub_801357A
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1c
	bpl %5
	ldrh r1, [r4, #0x20]
	movs r2, #0xf0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	ldr r2, [r4]
	asrs r1, r1, #1
	ldr r3, [r2, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, r2
	adds r0, r4, #0
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	bl __call_via_r5
5
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	bpl %6
	ldrh r1, [r4, #0x1e]
	movs r2, #0xa0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r2, r1, #0x10
	ldr r1, [r4]
	asrs r2, r2, #0x10
	ldr r3, [r1, #0x14]
	adds r5, r3, r1
	adds r0, r4, #0
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	bl __call_via_r5
6
	movs r0, #0
	mvns r0, r0
	strh r6, [r4, #0x22]
	strh r0, [r4, #0x3a]
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80138E2
sub_80138E2
	push {r4, r5}
	ldr r4, _08013B5C
	cmp r3, #0xff
	ldr r4, [r4]
	bne %7
	ldrb r3, [r4, #9]
7
	ldr r4, [r4, #4]
	lsls r2, r2, #4
	adds r2, r4, r2
	ldrh r5, [r2, #4]
	ldr r4, [r2, #8]
	lsls r3, r3, #2
	lsls r1, r5
	adds r1, r4, r1
	ldr r1, [r1, r3]
	ldr r2, [r2, #0xc]
	pop {r4, r5}
	adds r1, r2, r1
	movs r2, #0
	b sub_80137F8

	non_word_aligned_thumb_func_start sub_801390A
sub_801390A
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xc
	adds r5, r0, #0
	add r0, sp, #0x3fc
	adds r0, #0x1c
	str r0, [sp]
	add r3, sp, #0x3fc
	add r4, sp, #4
	adds r0, r4, #0
	ldr r1, [r3, #0x18]
	mov r2, sp
	bl vsprintf
	movs r0, #0
	str r0, [sp]
	movs r2, #1
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_80137F8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3

	non_word_aligned_thumb_func_start sub_8013946
sub_8013946
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x18
	adds r5, r0, #0
	add r0, sp, #0x3fc
	adds r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, _08013B5C
	add r3, sp, #0x3fc
	adds r3, #0x24
	ldr r0, [r0]
	ldrb r4, [r3, #0xc]
	cmp r4, #0xff
	bne %8
	ldrb r4, [r0, #9]
8
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r6, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r6
	adds r1, r2, r1
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r4, sp, #0x10
	adds r1, r0, r1
	adds r0, r4, #0
	add r2, sp, #0xc
	bl vsprintf
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #1
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_80137F8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3

	thumb_func_start sub_80139A4
sub_80139A4
	str r1, [r0, #0x40]
	bx lr

	thumb_func_start sub_80139A8
sub_80139A8
	movs r0, #1
	bx lr

	thumb_func_start sub_80139AC
sub_80139AC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	sub sp, #0xc
	beq %9
	cmp r6, #1
	bne %13
9
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq %13
	cmp r0, #1
	beq %18
	cmp r0, #2
	bne %13
	ldr r1, _08013B60
	ldr r0, [r4, #0x4c]
	ldr r1, [r1]
	ldr r2, [r1, #8]
	ldr r3, [r0]
	cmp r2, r3
	blo %13
	movs r3, #8
	ldrsb r5, [r0, r3]
	ldrh r2, [r4, #0x22]
	movs r3, #0x22
	adds r2, r2, r5
	strh r2, [r4, #0x22]
	ldrb r2, [r0, #4]
	ldr r1, [r1, #8]
	adds r1, r1, r2
	str r1, [r0]
	ldrsh r1, [r4, r3]
	movs r3, #6
	ldrsh r2, [r0, r3]
	cmp r1, r2
	blt %10
	movs r3, #8
	ldrsb r5, [r0, r3]
	cmp r5, #0
	bgt %11
10
	cmp r1, r2
	bgt %12
	movs r3, #8
	ldrsb r0, [r0, r3]
	cmp r0, #0
	bge %12
11
	ldr r0, [r4, #0x4c]
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
	strb r0, [r7, #0xc]
12
	ldrh r0, [r4, #0xe]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #0xe]
13
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq %17
	cmp r6, #0
	beq %14
	cmp r6, #1
	bne %15
14
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
15
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_80402F8
	cmp r6, #0
	beq %16
	cmp r6, #2
	bne %17
16
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x48]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
17
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
18
	ldrb r0, [r7, #0xd]
	ldr r5, [r4, #0x4c]
	bl sub_80133A0
	mov ip, r0
	ldr r0, _08013B60
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r5]
	cmp r0, r2
	blo %13
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldrb r2, [r5, #4]
	ldr r1, [r1, #8]
	adds r1, r1, r2
	str r1, [r5]
	strh r0, [r4, #0x3a]
	ldrh r0, [r5, #6]
	ldrh r1, [r5, #8]
	cmp r0, r1
	beq %19
	movs r2, #0x38
	ldrb r2, [r2, r4]
	ldr r1, [r4, #0x14]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r1, r2
	subs r2, #0x20
	ldrh r2, [r2, #0x1c]
	cmp r2, r0
	bne %20
19
	ldr r0, [r4, #0x4c]
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
	strb r0, [r7, #0xc]
	b %22
20
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq %22
	ldrh r2, [r5, #0xa]
	lsls r3, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r1, [r1, #2]
	cmp r1, r0
	bhs %21
	adds r0, r2, #1
	strh r0, [r5, #0xa]
21
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	mov r0, ip
	str r1, [sp, #8]
	ldrh r7, [r0, #2]
	adds r0, r7, #0
	bl __16__rt_sdiv
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #4]
	ldrh r1, [r4, #0x1e]
	adds r0, r7, #0
	bl __16__rt_udiv
	ldrh r1, [r5, #0xa]
	ldr r2, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	cmp r1, r0
	blt %22
	ldr r0, [sp, #8]
	adds r0, #1
	strh r0, [r4, #0x22]
22
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	b %13

	non_word_aligned_thumb_func_start sub_8013B0A
sub_8013B0A
	push {r3, lr}
	ldrh r2, [r0, #0xe]
	lsls r2, r2, #0x1f
	bmi %23
	ldr r2, [r0, #0x48]
	cmp r2, #0
	bne %24
	ldr r2, [r0]
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl __call_via_r2
23
	add sp, #4
	pop {r3}
	bx r3
24
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	beq %25
	cmp r1, #1
	beq %26
	cmp r1, #2
	bne %23
	ldr r1, [r0]
	ldr r2, [r1, #0x40]
	adds r1, r2, r1
	bl __call_via_r1
	b %23
25
	ldr r1, [r0]
	ldr r2, [r1, #0x38]
	adds r1, r2, r1
	bl __call_via_r1
	b %23
26
	ldr r1, [r0]
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl __call_via_r1
	b %23
	ALIGN
_08013B5C DCDU gUnknown_03003EBC
_08013B60 DCDU gUnknown_03003E98
	END
