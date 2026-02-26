	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT sub_800069A
	IMPORT sub_8000948
	IMPORT sub_800C55E
	IMPORT sub_800C93A
	IMPORT sub_800CAE2

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

	ALIGN
_080017C8 DCDU gUnknown_03003EA4
_080017CC DCDU gUnknown_03003EA0

	END
