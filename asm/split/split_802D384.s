	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_030032C0
	IMPORT gUnknown_030032E8
	IMPORT gUnknown_03003304
	IMPORT gUnknown_03003328
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT sub_8023A70
	IMPORT sub_8028C2E

	thumb_func_start sub_802D384

sub_802D384
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
	movs r3, #1
	str r3, [r4, #0x24]
	movs r3, #0
	str r3, [r4, #0x28]
	adds r3, r0, #1
	bne %6
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b %7
6
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
7
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
	ldr r3, _0802D6C8
	lsls r1, r0, #1
	ldrh r1, [r3, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs %8
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
8
	b %34
9
	DCB 0x05, 0x00
10
	DCB 0x05, 0x00
11
	DCB 0x05, 0x00
12
	DCB 0xAE, 0x00
13
	DCB 0x39, 0x01
loc_802d412
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %17
	cmp r1, #1
	beq %14
	cmp r1, #2
	beq %15
	cmp r1, #3
	bne %16
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r5, #5
	str r1, [r4, #0x3c]
	b %16
14
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b %16
15
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
16
	b %18
17
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
18
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	beq %21
	cmp r0, #1
	beq %22
	cmp r0, #2
	bne %19
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xa
	adds r0, r0, r1
	movs r5, #0xc
	mvns r5, r5
	str r0, [r4, #0x48]
19
	ldr r0, _0802D6D0
	adds r2, #0x3a
	lsls r1, r2, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r0, _0802D6D4
	ldrb r0, [r0]
	cmp r0, #0
	beq %20
	ldr r0, _0802D6D8
	adds r1, r5, #0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
20
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0x48]
	b %34
21
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x15
	mvns r5, r5
	str r0, [r4, #0x48]
	b %19
22
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x11
	mvns r5, r5
	str r0, [r4, #0x48]
	b %19
loc_802d564
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %26
	cmp r1, #1
	beq %23
	cmp r1, #2
	beq %24
	cmp r1, #3
	bne %25
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b %25
23
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b %25
24
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
25
	b %27
26
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
27
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	adds r0, r0, r3
	str r0, [r4, #0x48]
	b %34
loc_802d67a
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %31
	cmp r1, #1
	beq %28
	cmp r1, #2
	beq %30
	cmp r1, #3
	bne %29
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6E0
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b %29
	ALIGN

	ALIGN
_0802D6C8 DCDU gUnknown_03003328
_0802D6CC DCDU gUnknown_030032C0
_0802D6D0 DCDU gUnknown_0300345C
_0802D6D4 DCDU gUnknown_03003D20
_0802D6D8 DCDU gPlayerEntity
_0802D6DC DCDU gUnknown_030032E8
_0802D6E0 DCDU gUnknown_03003304

	END
