	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BF8
	IMPORT gUnknown_0804AEAC
	IMPORT DivRem
	IMPORT sub_8040978

	thumb_func_start sub_80409E4
sub_80409E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _08040C28
	ldr r5, _08040C30
	ldrb r6, [r0, #0xf]
	ldr r4, _08040C2C
	cmp r6, #0
	beq %12
1
	ldrh r0, [r5, #4]
	cmp r0, #5
	beq %15
	bgt %8
	cmp r0, #5
	bhs %2
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
2
	b %11
	ALIGN
3
	DCB 0x41, 0x00
4
	DCB 0x63, 0x00
5
	DCB 0x6D, 0x00
6
	DCB 0x89, 0x00
7
	DCB 0xB2, 0x00
8
	cmp r0, #0xa
	beq %17
	bgt %9
	cmp r0, #6
	beq %18
	cmp r0, #7
	bne %11
	ldrb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x19]
	ldr r3, _08040C34
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x19
	ldrh r0, [r3, r0]
	ldrb r1, [r4, #0x1a]
	muls r1, r0
	asrs r0, r1, #5
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble %22
	movs r0, #0x40
	strb r0, [r4, #0xf]
	b %34
9
	cmp r0, #0xe
	beq %23
	cmp r0, #0x1b
	bne %11
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne %10
	ldr r0, [r4, #8]
	adds r0, #0x7c
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x40]
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r4, #7]
	beq %11
10
	ldrb r0, [r4, #7]
	adds r0, #0xff
	strb r0, [r4, #7]
11
	adds r0, r4, #0
	bl sub_8040978
	subs r6, #1
	adds r4, #0x4c
	adds r5, #8
	cmp r6, #0
	bne %1
12
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
loc_8040a8c
	ldrh r7, [r5, #6]
	cmp r7, #0
	beq %11
	ldr r0, _08040C30
	subs r0, #0x30
	ldrb r0, [r0, #3]
	movs r1, #3
	bl DivRem
	cmp r0, #0
	beq %14
	cmp r0, #1
	beq %16
	cmp r0, #2
	bne %13
	ldrb r0, [r4, #0xd]
	lsls r1, r7, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r0, r1
	strb r0, [r4, #0xc]
13
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b %11
14
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	b %13
15
	b %19
16
	ldrb r0, [r4, #0xd]
	lsrs r1, r7, #4
	adds r0, r0, r1
	strb r0, [r4, #0xc]
	b %13
loc_8040ad0
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b %11
17
	b %35
loc_8040ae4
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x16]
	subs r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b %11
18
	b %30
19
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl %20
	movs r0, #0
	strb r0, [r4, #0xf]
	b %21
20
	cmp r0, #0x40
	ble %21
	movs r0, #0x40
	strb r0, [r4, #0xf]
21
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
loc_8040b1c
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq %11
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0xd]
	cmp r1, r2
	beq %11
	b %24
22
	b %33
23
	b %38
24
	lsls r7, r1, #7
	mov ip, r7
	lsls r7, r2, #7
	movs r3, #0x14
	ldrsh r2, [r4, r3]
	adds r3, r7, r2
	mov r7, ip
	subs r3, r7, r3
	NEGS r7, r3
	cmp r3, #0
	blt %25
	adds r7, r3, #0
25
	cmp r7, r0
	ble %27
	cmp r3, #0
	ble %26
	adds r0, r2, r0
	strh r0, [r4, #0x14]
	b %28
26
	subs r0, r2, r0
	strh r0, [r4, #0x14]
	b %28
27
	movs r0, #0
	strh r0, [r4, #0x14]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
28
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
29
	b %11
loc_8040b6e
	ldrb r0, [r4, #0x1b]
	ldr r3, _08040C34
	ldrb r1, [r4, #0x1a]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	ldrsh r2, [r3, r2]
	muls r1, r2
	asrs r1, r1, #5
	strh r1, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b %11
30
	ldrb r0, [r4, #0x1b]
	ldr r3, _08040C34
	ldrb r1, [r4, #0x1a]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	ldrsh r2, [r3, r2]
	muls r1, r2
	asrs r1, r1, #5
	strh r1, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl %31
	movs r0, #0
	strb r0, [r4, #0xf]
	b %32
31
	cmp r0, #0x40
	ble %32
	movs r0, #0x40
	strb r0, [r4, #0xf]
32
	ldrh r0, [r4, #4]
	movs r1, #0x18
	orrs r0, r1
	strh r0, [r4, #4]
	b %11
33
	cmp r0, #0
	bge %34
	movs r0, #0
	strb r0, [r4, #0xf]
34
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
	b %11
35
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl %36
	movs r0, #0
	strb r0, [r4, #0xf]
	b %37
36
	cmp r0, #0x40
	ble %37
	movs r0, #0x40
	strb r0, [r4, #0xf]
37
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
	b %11
38
	ldrh r0, [r5, #6]
	lsrs r0, r0, #4
	cmp r0, #0xd
	bne %29
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq %29
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #6]
	bne %29
	ldrh r0, [r4, #4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strh r0, [r4, #4]
	b %11
	ALIGN
_08040C28 DCDU gUnknown_03003530
_08040C2C DCDU gUnknown_030037A0
_08040C30 DCDU gUnknown_03003BF8
_08040C34 DCDU gUnknown_0804AEAC
	END
