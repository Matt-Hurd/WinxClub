	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_030032A0
	IMPORT gUnknown_03003D20
	IMPORT sub_8023A70

	non_word_aligned_thumb_func_start sub_802C8D2

sub_802C8D2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne %4
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b %5
4
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
5
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _0802CC6C
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #8
	str r1, [r4, #0x38]
	bhs %6
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
6
	b %23
	ALIGN
7
	DCB 0x09, 0x00
8
	DCB 0x75, 0x00
9
	DCB 0xD6, 0x00
10
	DCB 0x41, 0x01
11
	DCB 0xB2, 0x01
12
	DCB 0x1D, 0x02
13
	DCB 0x7E, 0x02
14
	DCB 0xDF, 0x02
loc_802c960
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %17
	cmp r1, #1
	beq %15
	cmp r1, #2
	beq %16
	cmp r1, #3
	bne %18
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %18
15
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %18
16
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %18
17
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
18
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	ldr r0, _0802CC74
	ldrb r0, [r0]
	cmp r0, #0
	beq %23
	ldr r0, _0802CC78
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b %23
loc_802ca38
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %21
	cmp r1, #1
	beq %19
	cmp r1, #2
	beq %20
	cmp r1, #3
	bne %22
	movs r2, #0x1d
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %22
19
	movs r2, #7
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %22
20
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %22
21
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
22
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
23
	b %47
loc_802cafa
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %27
	cmp r1, #1
	beq %24
	cmp r1, #2
	beq %25
	cmp r1, #3
	bne %26
	movs r2, #0x15
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %26
24
	movs r2, #5
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #7
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %26
25
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
26
	b %28
27
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
28
	movs r0, #3
	movs r1, #0x44
	strb r0, [r1, r4]
	b %47
loc_802cbd0
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %32
	cmp r1, #1
	beq %29
	cmp r1, #2
	beq %30
	cmp r1, #3
	bne %31
	movs r2, #3
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %31
29
	movs r2, #0x19
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %31
30
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
31
	b %33
	ALIGN

	ALIGN
_0802CC6C DCDU gUnknown_030032A0
_0802CC70 DCDU 0xFFFE0000
_0802CC74 DCDU gUnknown_03003D20
_0802CC78 DCDU gPlayerEntity

	END
