	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_03003EB0
	IMPORT sub_800212C
	IMPORT sub_8002230
	IMPORT __16__rt_memclr
	IMPORT __16__rt_sdiv
	IMPORT sub_8040504

	thumb_func_start sub_8002828
sub_8002828
	push {r3, r4, r5, r6, r7}
	movs r2, #1
	lsls r2, r2, #0xb
	movs r4, #3
	ldr r1, [r0, #8]
	lsls r4, r4, #0x19
	adds r2, r0, r2
	cmp r1, #0
	ldr r6, _08002C14
	ldr r5, _08002C10
	beq %2
	mov r7, sp
	adds r0, r5, #0
1
	str r6, [sp]
	str r7, [r0]
	ldr r3, [r2, #0x20]
	subs r3, r1, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r0, #4]
	ldr r3, _08002C18
	str r3, [r0, #8]
	ldr r3, [r0, #8]
	ldr r1, [r1]
	cmp r1, #0
	bne %1
2
	ldr r0, _08002C1C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq %4
	mov r1, sp
3
	str r6, [sp]
	str r1, [r5]
	ldr r3, [r2, #0x20]
	subs r3, r0, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r5, #4]
	ldr r3, _08002C20
	str r3, [r5, #8]
	ldr r3, [r5, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne %3
4
	pop {r3, r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800288A
sub_800288A
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r1, #0x50]
	ldr r4, [r1]
	adds r7, r1, #0
	ldr r1, [r0, #0x18]
	sub sp, #0x4c
	str r1, [sp, #0x2c]
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl __16__rt_memclr
	ldr r0, [r7, #0x50]
	movs r3, #0x1e
	ldr r2, [r0]
	movs r1, #0x14
	lsls r6, r2, #0x1f
	bmi %5
	ldrh r6, [r0, #0xc]
	cmp r6, #0x1e
	bge %5
	adds r3, r6, #0
5
	str r3, [sp, #0x28]
	lsls r3, r2, #0x1e
	bmi %6
	ldrh r3, [r0, #0xe]
	cmp r3, #0x14
	bge %6
	adds r1, r3, #0
6
	str r1, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #0x1f
	bmi %7
	ldrh r2, [r0, #0xc]
	subs r2, #0x1e
	cmp r2, #0
	ble %7
	adds r1, r2, #0
7
	str r1, [sp, #0x20]
	ldr r3, [sp, #0x28]
	movs r1, #0x20
	subs r1, r1, r3
	str r1, [sp, #0x1c]
	ldrh r0, [r0, #0xe]
	movs r1, #0x21
	lsls r1, r1, #6
	str r0, [sp, #0x14]
	ldr r0, _08002C24
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r7, r0
	bl sub_8040504
	ldr r0, [r7, #0x48]
	movs r6, #6
	lsls r2, r0, #0x15
	bmi %8
	movs r6, #5
8
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0xc]
	movs r0, #0
	str r3, [sp, #4]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble %16
	adds r0, r5, #4
	cmp r6, #5
	bne %9
	movs r1, #0
	b %10
9
	movs r1, #1
10
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	adds r1, r5, #0
	adds r1, #8
	cmp r6, #5
	str r3, [sp, #0x48]
	beq %11
	adds r0, r1, #0
11
	str r0, [sp, #0x44]
	movs r0, #1
	lsls r0, r0, #0xb
	adds r2, r5, r0
	movs r0, #1
	lsls r0, r6
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	asrs r1, r0, #2
	movs r0, #0x21
	lsls r0, r0, #0x1a
	orrs r1, r0
	str r2, [sp, #0x40]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x3c]
	lsls r0, r0, #1
	str r0, [sp, #0x34]
	adds r1, r7, #0
	adds r1, #0x40
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x38]
	lsls r0, r0, #1
	str r0, [sp, #0x30]
12
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne %13
	ldr r0, [r7, #0x50]
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x2c]
13
	ldr r0, [r7, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
	cmp r1, #0
	ble %19
14
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne %15
	ldr r0, [r7, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	subs r1, r1, r0
	str r1, [sp, #0x2c]
15
	ldr r1, [sp, #0x2c]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r7, #0x54]
	ldr r1, [r1, #0x10]
	beq %22
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov lr, r1
	add lr, r0
	mov ip, r1
	mov r1, lr
	ldr r1, [r1]
	ldr r0, [r7, #0x30]
	lsls r2, r1, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, ip
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0xe
	ldr r1, [r3, r2]
	lsls r3, r1, #0xb
	lsrs r3, r3, #0x16
	beq %17
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	str r1, [sp, #8]
	b %21
16
	b %33
17
	ldr r3, [sp, #4]
	adds r1, r2, r3
	movs r3, #1
	ldr r2, [r1]
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x48]
	orrs r2, r3
	str r2, [r1]
	ldr r1, [sp, #0x44]
	cmp r6, #5
	mov ip, r1
	bne %18
	ldr r1, [r5, #4]
	cmp r1, #0
	bne %18
	ldr r1, [r5, #8]
	str r1, [r5, #4]
	ldr r2, [r1]
	str r2, [r5, #8]
	adds r2, r1, #4
	str r2, [r1]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [r1, #4]
18
	mov r1, ip
	ldr r1, [r1]
	ldr r2, [sp, #0x40]
	ldr r2, [r2, #0x20]
	subs r1, r1, r2
	asrs r2, r1, #2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r3, [r3, r1]
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [sp, #4]
	lsls r2, r2, #0x15
	adds r1, r1, r3
	ldr r3, [r1]
	lsrs r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x15
	str r1, [sp, #8]
	mov r1, ip
	ldr r1, [r1]
	ldr r3, _08002C10
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [r7, #0x54]
	ldr r2, [r1, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b %20
19
	b %30
20
	lsls r1, r6
	adds r1, r2, r1
	str r1, [r3]
	ldr r1, [sp, #8]
	movs r2, #3
	lsls r2, r2, #0x19
	lsls r1, r6
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, [sp, #0x3c]
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [sp]
	mov r2, ip
	str r1, [r2]
21
	b %23
22
	b %24
23
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	mov ip, r1
	add ip, r3
	mov r2, ip
	ldr r1, [r2]
	ldr r3, _08002C28
	adds r2, r1, #0
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08002C2C
	ands r2, r3
	orrs r1, r2
	mov r2, ip
	str r1, [r2]
	ldr r1, [sp, #0x38]
	movs r3, #1
	ldrh r1, [r1, #0xa]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xa
	subs r1, r2, r1
	ldrh r2, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	lsls r3, r3, #1
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xb
	bics r2, r3
	orrs r1, r2
	strh r1, [r4]
	ldr r0, [r0]
	movs r2, #0xf
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	lsls r2, r2, #0xc
	bics r1, r2
	lsls r0, r0, #0xc
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08002C24
	ldr r0, [r0]
	ldr r1, [r7]
	subs r1, r4, r1
	asrs r2, r1, #1
	mov r1, lr
	adds r3, r7, #0
	bl sub_800212C
	b %29
24
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0xe
	ldr r1, [r3, r2]
	lsls r3, r1, #0xb
	lsrs r3, r3, #0x16
	beq %25
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	mov lr, r1
	b %27
25
	ldr r3, [sp, #4]
	adds r1, r2, r3
	movs r3, #1
	ldr r2, [r1]
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x48]
	orrs r2, r3
	str r2, [r1]
	ldr r1, [sp, #0x44]
	cmp r6, #5
	mov ip, r1
	bne %26
	ldr r1, [r5, #4]
	cmp r1, #0
	bne %26
	ldr r1, [r5, #8]
	str r1, [r5, #4]
	ldr r2, [r1]
	str r2, [r5, #8]
	adds r2, r1, #4
	str r2, [r1]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [r1, #4]
26
	mov r1, ip
	ldr r1, [r1]
	ldr r2, [sp, #0x40]
	ldr r2, [r2, #0x20]
	subs r1, r1, r2
	asrs r2, r1, #2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r3, [r3, r1]
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [sp, #4]
	lsls r2, r2, #0x15
	adds r1, r1, r3
	ldr r3, [r1]
	lsrs r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x15
	mov lr, r1
	mov r1, ip
	ldr r1, [r1]
	ldr r3, _08002C10
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [r7, #0x54]
	ldr r2, [r1, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r1, r6
	adds r1, r2, r1
	str r1, [r3]
	mov r1, lr
	movs r2, #3
	lsls r2, r2, #0x19
	lsls r1, r6
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, [sp, #0x3c]
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [sp]
	mov r2, ip
	str r1, [r2]
27
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	mov ip, r1
	add ip, r3
	mov r2, ip
	ldr r1, [r2]
	ldr r3, _08002C28
	adds r2, r1, #0
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08002C2C
	ands r2, r3
	orrs r1, r2
	mov r2, ip
	str r1, [r2]
	ldr r1, [sp, #0x38]
	mov r2, lr
	ldrh r1, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0xa
	subs r1, r2, r1
	ldrh r2, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xa
	orrs r2, r1
	b %28
	ALIGN
_08002C10 DCDU REG_DMA3
_08002C14 DCDU 0x10001000
_08002C18 DCDU 0x85000010
_08002C1C DCDU gUnknown_03003EB0
_08002C20 DCDU 0x85000008
_08002C24 DCDU gUnknown_03003EA4
_08002C28 DCDU 0xFFE007FF
_08002C2C DCDU 0x001FF800
28
	strh r2, [r4]
	ldr r1, [r0]
	lsls r3, r3, #1
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xb
	bics r2, r3
	orrs r1, r2
	strh r1, [r4]
	ldr r0, [r0]
	movs r2, #0xf
	lsls r2, r2, #0xc
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	lsls r0, r0, #0xc
	bics r1, r2
	orrs r0, r1
	strh r0, [r4]
29
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	adds r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r1, #2
	subs r0, #1
	str r0, [sp, #0x18]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x10]
	adds r4, #2
	cmp r0, r1
	bge %30
	b %14
30
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq %31
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x2c]
	adds r1, r0, r1
	str r1, [sp, #0x2c]
	b %32
31
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #1
	adds r1, r0, r1
	str r1, [sp, #0x2c]
32
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	adds r4, r0, r4
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge %33
	b %12
33
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8002CAE
sub_8002CAE
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	movs r2, #1
	orrs r0, r2
	sub sp, #0x80
	str r0, [r4, #0x28]
	ldr r0, _080030A0
	adds r5, r1, #0
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r2, [r5, #0x48]
	movs r0, #6
	lsls r3, r2, #0x15
	bmi %34
	movs r0, #5
34
	str r0, [sp, #0x2c]
	lsls r0, r2, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r7, [r0, #0xc]
	ldr r3, [sp, #0x88]
	movs r0, #0x1e
	ldr r1, [r3]
	cmp r1, #0
	bgt %35
	movs r0, #0
35
	ldr r3, [sp, #0x88]
	movs r2, #0x14
	ldr r3, [r3, #4]
	cmp r3, #0
	bgt %36
	movs r2, #0
36
	str r2, [sp, #0x28]
	movs r2, #1
	cmp r1, #0
	ble %37
	movs r2, #0
37
	str r2, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	str r0, [sp, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x78]
	str r0, [sp, #0x74]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x70]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x7c]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x74]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x6c]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge %38
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
38
	cmp r1, #0
	bge %39
	ldr r0, [sp, #0x6c]
	adds r1, r0, r1
39
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x68]
	adds r0, r0, r2
	ldr r2, [sp, #0x70]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x6c]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	adds r0, r6, #4
	cmp r3, #5
	bne %40
	movs r1, #0
	b %41
40
	movs r1, #1
41
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x64]
	ldr r3, [sp, #0x2c]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq %42
	adds r0, r1, #0
42
	ldr r3, [sp, #0x2c]
	str r0, [sp, #0x60]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x58]
	str r2, [sp, #0x5c]
43
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %46
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x54]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x54]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %44
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %48
44
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne %45
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %45
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
45
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b %47
46
	b %49
47
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
48
	ldr r0, [sp, #8]
	ldr r3, _080030A4
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080030A0
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %53
49
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %50
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %52
50
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne %51
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %51
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
51
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
52
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _080030A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
53
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne %54
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x68]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	b %55
	ALIGN
_080030A0 DCDU gUnknown_03003EA4
_080030A4 DCDU 0xFFE007FF
_080030A8 DCDU 0x001FF800
54
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
55
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, #1
	adds r1, #0x20
	str r1, [sp, #0x10]
	cmp r0, #0x15
	str r0, [sp, #0xc]
	bge %56
	b %43
56
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #0x24]
	asrs r0, r0, #0x13
	adds r1, r0, r1
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	ldr r2, [sp, #0x28]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x44]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x18]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x50]
	str r0, [sp, #0x40]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge %57
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
57
	cmp r1, #0
	bge %58
	ldr r0, [sp, #0x40]
	adds r1, r0, r1
58
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x44]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #6
	str r1, [sp, #0x3c]
59
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x3c]
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %62
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x38]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x38]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %60
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %64
60
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne %61
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %61
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
61
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b %63
62
	b %65
63
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
64
	ldr r0, [sp, #8]
	ldr r3, _08003644
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800364C
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %69
65
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %66
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %68
66
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne %67
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %67
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
67
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
68
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003644
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
69
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bne %70
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x34]
	b %71
70
	ldr r0, [sp, #0x34]
	adds r0, #2
	str r0, [sp, #0x34]
71
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	adds r0, #1
	adds r1, #1
	str r1, [sp, #0x20]
	cmp r0, #0x1e
	str r0, [sp, #0xc]
	bge %72
	b %59
72
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_800345C
sub_800345C
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x68
	str r0, [r4, #0x28]
	ldr r0, _0800364C
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi %73
	movs r3, #5
73
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x28]
	ldr r7, [r0, #0xc]
	ldr r1, [sp, #0x70]
	movs r0, #0x1e
	ldr r1, [r1]
	cmp r1, #0
	bgt %74
	movs r0, #0
74
	ldr r2, [r5, #0x3c]
	movs r1, #0x15
	str r2, [sp, #0x64]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %75
	movs r1, #0x14
75
	str r1, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	ldr r0, [sp, #0x64]
	lsrs r2, r2, #0x1b
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x60]
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x58]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x64]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x54]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge %76
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
76
	cmp r1, #0
	bge %77
	ldr r0, [sp, #0x54]
	adds r1, r0, r1
77
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x50]
	adds r0, r0, r2
	ldr r2, [sp, #0x58]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x54]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	ldr r1, [sp, #0x24]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble %83
	ldr r3, [sp, #0x28]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne %78
	movs r1, #0
78
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x4c]
	ldr r3, [sp, #0x28]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq %79
	adds r0, r1, #0
79
	str r0, [sp, #0x48]
	ldr r3, [sp, #0x28]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x40]
	str r2, [sp, #0x44]
80
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %85
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x3c]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x3c]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq %81
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	b %87
81
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne %82
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %82
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
82
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	b %84
83
	b %95
84
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x2c]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b %86
85
	b %88
	ALIGN
_08003644 DCDU 0xFFE007FF
_08003648 DCDU 0x001FF800
_0800364C DCDU gUnknown_03003EA4
86
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
87
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003A68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x38]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x38]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x2c]
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, lr
	ldr r2, [r2]
	movs r3, #0xf
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08003A70
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %92
88
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq %89
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b %91
89
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne %90
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %90
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
90
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	ldr r2, [sp, #8]
	ldr r0, [r2]
	mov r2, lr
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
91
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003A68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x34]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x34]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	mov r2, lr
	ldrh r0, [r0, #0xa]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
92
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne %93
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	b %94
93
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x30]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x30]
94
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r1, #0x20
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge %95
	b %80
95
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x74
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_8003884
sub_8003884
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x60
	str r0, [r4, #0x28]
	ldr r0, _08003A70
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi %96
	movs r3, #5
96
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #0x68]
	movs r1, #0x14
	ldr r0, [r0, #4]
	cmp r0, #0
	bgt %97
	movs r1, #0
97
	ldr r0, [r5, #0x38]
	movs r2, #0x1f
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1d
	bne %98
	movs r2, #0x1e
98
	str r2, [sp, #0x1c]
	lsls r2, r0, #8
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x3c]
	asrs r2, r2, #0x13
	adds r1, r2, r1
	str r1, [sp, #0x5c]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #0x14]
	asrs r1, r0, #0x13
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x58]
	str r0, [sp, #0x54]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x50]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x10]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x4c]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bge %99
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x10]
	adds r2, r0, r2
	str r2, [sp, #0x10]
99
	cmp r1, #0
	bge %100
	ldr r0, [sp, #0x4c]
	adds r1, r0, r1
100
	ldr r0, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x10]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x50]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	movs r0, #0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble %106
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x20]
	lsls r1, r0, #6
	str r1, [sp, #0x48]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne %101
	movs r1, #0
101
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x20]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq %102
	adds r0, r1, #0
102
	str r0, [sp, #0x40]
	ldr r3, [sp, #0x20]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x38]
	str r2, [sp, #0x3c]
103
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	adds r1, r0, r1
	ldr r0, [sp, #0x28]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %108
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x34]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x34]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq %104
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	b %110
104
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne %105
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %105
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
105
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	lsls r3, r3, #0xa
	b %107
106
	b %118
107
	lsrs r3, r3, #0x1f
	asrs r2, r3
	adds r0, r0, r7
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x24]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b %109
108
	b %111
	ALIGN
_08003A68 DCDU 0xFFE007FF
_08003A6C DCDU 0x001FF800
_08003A70 DCDU gUnknown_03003EA4
109
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
110
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003E8C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x30]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x30]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x24]
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, lr
	ldr r2, [r2]
	movs r3, #0xf
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08003E94
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %115
111
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq %112
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b %114
112
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne %113
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %113
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
113
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	ldr r2, [sp, #8]
	ldr r0, [r2]
	mov r2, lr
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
114
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003E8C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x2c]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x2c]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	mov r2, lr
	ldrh r0, [r0, #0xa]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
115
	ldr r0, [sp, #0x10]
	subs r0, #1
	str r0, [sp, #0x10]
	bne %116
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x10]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x28]
	b %117
116
	ldr r0, [sp, #0x28]
	adds r0, #2
	str r0, [sp, #0x28]
117
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge %118
	b %103
118
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x6c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8003CA6
sub_8003CA6
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x48]
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldr r0, [r6, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x28]
	ldr r0, _08003E94
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r7, r2, #0
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x48]
	adds r0, r0, r1
	ldr r5, [r0, #0xc]
	movs r0, #0
	ldr r1, [r7]
	mvns r0, r0
	adds r3, r0, #0
	cmp r1, #0
	mov lr, r1
	bgt %119
	ldr r1, [r4, #0x38]
	movs r3, #0x1f
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne %119
	movs r3, #0x1e
119
	ldr r1, [r7, #4]
	adds r2, r0, #0
	cmp r1, #0
	mov ip, r3
	bgt %120
	ldr r3, [r4, #0x3c]
	movs r2, #0x15
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1d
	bne %120
	movs r2, #0x14
120
	str r2, [sp, #0xc]
	ldr r3, [r4, #0x38]
	movs r2, #0
	lsls r7, r3, #0xd
	lsrs r7, r7, #0x1d
	beq %121
	movs r2, #1
	mov r7, lr
	cmp r7, #0
	ble %121
	movs r2, #0
121
	str r2, [sp, #8]
	ldr r2, [r4, #0x3c]
	lsls r7, r2, #0xd
	lsrs r7, r7, #0x1d
	bne %122
	cmp r1, #0
	bgt %123
	movs r0, #0
	b %123
122
	cmp r1, #0
	bgt %123
	movs r0, #1
123
	asrs r1, r3, #0x13
	asrs r2, r2, #0x13
	adds r0, r2, r0
	str r0, [sp, #0x44]
	ldr r0, [r4, #0x50]
	add r1, ip
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x38]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x3c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x34]
	bl __16__rt_sdiv
	cmp r7, #0
	bge %124
	ldr r0, [sp, #0x38]
	adds r7, r0, r7
124
	cmp r1, #0
	bge %125
	ldr r0, [sp, #0x34]
	adds r1, r0, r1
125
	ldr r0, [sp, #0x40]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	str r2, [sp, #0x30]
	adds r0, r0, r2
	ldr r2, [sp, #0x38]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	adds r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	adds r0, #4
	str r0, [sp, #0x28]
126
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq %129
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r7, r1, r0
	adds r2, r1, #0
	ldr r1, [r7]
	ldr r0, [r4, #0x30]
	mov ip, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, ip
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r2
	ldr r2, _08003E8C
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08003E90
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %128
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi %127
	ldr r0, [sp, #0x28]
127
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
128
	ldr r0, _08003E94
	adds r2, r4, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8002230
	b %131
129
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r3, _08003E8C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r5
	ldr r2, [r1]
	movs r7, #1
	lsls r7, r7, #0xb
	ands r3, r2
	subs r2, r2, r7
	ldr r7, _08003E90
	ands r2, r7
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0xb
	lsrs r1, r1, #0x16
	bne %131
	ldr r1, [sp, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r0, [r5, r0]
	lsls r2, r0, #0xa
	bmi %130
	ldr r1, [sp, #0x28]
130
	lsls r2, r0, #0x15
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r0
	lsls r0, r2, #2
	ldr r2, [r6, #0x20]
	adds r0, r0, r2
	ldr r2, [r1]
	str r2, [r0]
	str r0, [r1]
131
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x50]
	bne %133
	b %132
	ALIGN
_08003E8C DCDU 0xFFE007FF
_08003E90 DCDU 0x001FF800
_08003E94 DCDU gUnknown_03003EA4
132
	ldrh r1, [r0, #0xe]
	str r1, [sp, #4]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x30]
	adds r1, r0, r1
	str r1, [sp, #0x10]
	b %134
133
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r0, #1
	adds r1, r0, r1
	str r1, [sp, #0x10]
134
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x15
	bge %135
	b %126
135
	ldr r0, [r4, #0x38]
	ldr r2, [sp, #8]
	asrs r0, r0, #0x13
	adds r1, r0, r2
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #0xc]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x18]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x1c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	bl __16__rt_sdiv
	cmp r7, #0
	bge %136
	ldr r0, [sp, #0x18]
	adds r7, r0, r7
136
	cmp r1, #0
	bge %137
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
137
	ldr r0, [sp, #0x20]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	muls r2, r1
	lsls r1, r2, #1
	adds r1, r0, r1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	subs r7, r0, r7
	movs r0, #0
	str r0, [sp]
138
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq %141
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004230
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %140
	mov r1, lr
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi %139
	ldr r0, [sp, #0x28]
139
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
140
	ldr r0, _08004238
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b %143
141
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %143
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi %142
	ldr r0, [sp, #0x28]
142
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
143
	subs r7, #1
	bne %144
	ldr r0, [r4, #0x50]
	ldrh r7, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r7, #1
	subs r0, #2
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b %145
144
	ldr r1, [sp, #0x10]
	adds r1, #2
	str r1, [sp, #0x10]
145
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x1e
	bge %146
	b %138
146
	ldr r0, [r6, #0x28]
	movs r1, #2
	bics r0, r1
	str r0, [r6, #0x28]
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8004038
sub_8004038
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r1, #0xb
	adds r5, r2, #0
	adds r2, r0, r1
	str r2, [sp, #0x24]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r7, [r4, #0x50]
	movs r1, #0x21
	ldr r0, [r7, #0x18]
	lsls r1, r1, #6
	str r0, [sp, #0x20]
	ldr r0, _08004238
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r6, [r0, #0xc]
	ldr r1, [r5]
	movs r0, #0
	cmp r1, #0
	bgt %147
	movs r0, #0x1e
147
	ldr r1, [r4, #0x44]
	asrs r3, r1, #0x13
	str r3, [sp, #0x1c]
	ldr r2, [r4, #0x3c]
	asrs r5, r2, #0x13
	cmp r3, r5
	bne %148
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x1d
	bne %150
	lsls r3, r2, #0xd
	lsrs r3, r3, #0x1d
	beq %150
148
	movs r2, #0x15
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne %149
	movs r2, #0x14
149
	str r2, [sp, #8]
	b %152
150
	movs r1, #0x15
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %151
	movs r1, #0x14
151
	str r1, [sp, #8]
152
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	ldrh r0, [r7, #0xc]
	str r0, [sp, #0x18]
	bl __16__rt_sdiv
	ldrh r0, [r7, #0xe]
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	adds r7, r0, #0
	bl __16__rt_sdiv
	cmp r5, #0
	bge %153
	ldr r0, [sp, #0x18]
	adds r5, r0, r5
153
	cmp r1, #0
	bge %154
	adds r1, r7, r1
154
	lsls r2, r5, #1
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	subs r7, r7, r1
	muls r2, r1
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r0, #0
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	cmp r1, #0
	ble %159
	ldr r0, [sp, #0x28]
	adds r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	adds r0, #4
	str r0, [sp, #0xc]
155
	ldrh r0, [r5]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq %158
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004230
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %157
	mov r1, lr
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi %156
	ldr r0, [sp, #0xc]
156
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
157
	ldr r0, _08004238
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b %162
158
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %162
	mov r1, ip
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi %161
	b %160
159
	b %165
160
	ldr r0, [sp, #0xc]
161
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
162
	subs r7, #1
	ldr r0, [r4, #0x50]
	bne %163
	ldrh r7, [r0, #0xe]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x14]
	adds r5, r0, r1
	b %164
163
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #1
	adds r5, r0, r5
164
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r1
	bge %165
	b %155
165
	ldr r2, [sp, #0x24]
	movs r1, #2
	ldr r0, [r2, #0x28]
	bics r0, r1
	str r0, [r2, #0x28]
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08004230 DCDU 0xFFE007FF
_08004234 DCDU 0x001FF800
_08004238 DCDU gUnknown_03003EA4
	END
