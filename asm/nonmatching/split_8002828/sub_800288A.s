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

