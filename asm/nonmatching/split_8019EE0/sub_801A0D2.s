	non_word_aligned_thumb_func_start sub_801A0D2
sub_801A0D2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	add r0, sp, #0x44
	bl sub_80046F8
	ldr r1, _0801A2D8
	movs r2, #0xc
	adds r1, #0x30
	add r0, sp, #0x38
	bl __16__rt_memcpy
	ldr r0, _0801A2D8
	add r3, sp, #0
	subs r0, #0xa
	ldrh r1, [r0]
	strh r1, [r3, #0x34]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0x36]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x2c]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x2e]
	ldrh r1, [r0, #8]
	movs r0, #0
	strh r1, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0x81
	strb r0, [r1, r4]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, _0801A2F8
	ldr r0, [r0]
	bl sub_80050FA
	mov r5, sp
	mov r0, sp
	bl sub_8001A60
	ldr r0, _0801A2FC
	add r1, pc, #0x1DC
	ldr r0, [r0]
	bl sub_8004FFC
	movs r3, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r5, #0
	ldr r5, _0801A30C
	str r0, [sp]
	ldr r0, [r5]
	bl sub_800D9E0
	ldr r0, _0801A310
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	subs r1, r0, #4
	subs r2, r0, #6
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	add r1, sp, #0x2c
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0xff
	adds r1, #0x85
	str r2, [sp, #4]
	add r2, sp, #0x38
	movs r0, #3
	add r3, sp, #0x34
	bl sub_8018D76
	adds r1, r4, #0
	adds r1, #8
	movs r3, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r1, #0x19
	lsls r1, r1, #6
	adds r7, r4, r1
	movs r0, #0
	movs r2, #4
	strb r0, [r7, #4]
	strb r2, [r7, #5]
	movs r5, #0
15
	ldr r0, _0801A2C8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r4
	adds r6, r1, r2
	str r0, [r6, #0x34]
	ldr r1, _0801A314
	bl sub_800065C
	lsls r0, r5, #5
	adds r0, #0xc
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r1, #5
	strh r1, [r3, #0x2a]
	ldr r0, [r6, #0x34]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r6, #0x34]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #1
	lsls r3, r3, #0xa
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r1, [r0, #0x2a]
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r1, #5
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %16
	orrs r1, r3
	str r1, [r0]
16
	movs r1, #1
	ldr r0, [r6, #0x34]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %15
	movs r5, #0
17
	movs r2, #0xff
	ldr r1, _0801A318
	str r2, [sp, #0xc]
	lsls r2, r5, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r2, r2, r5
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0xbb
	lsls r2, r2, #2
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r2, #0x63
	lsls r1, r1, #2
	adds r6, r0, r1
	str r2, [sp]
	movs r2, #0
	movs r1, #0
	movs r3, #0x14
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801A2D8
	lsls r0, r5, #2
	ldrh r0, [r1, r0]
	ldr r1, _0801A2D0
	movs r3, #0xff
	ldr r1, [r1]
	movs r2, #0
	adds r1, r1, r5
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_80138E2
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %17
	ldr r0, _0801A2DC
	movs r2, #0xff
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8
	movs r1, #0x28
	ldr r0, [r0]
	movs r6, #0x7e
	str r0, [r5, #0x50]
	str r2, [sp, #0xc]
	movs r2, #0x30
	str r2, [sp]
	str r1, [sp, #8]
	movs r0, #0x38
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x2C
	bl sub_80137F8
	ldr r0, _0801A2E0
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8
	ldr r0, [r0]
	b %20
	ALIGN
_0801A2C8 DCDU gUnknown_03003448
_0801A2CC DCDU 0x00000634
_0801A2D0 DCDU gPlayerEntity
_0801A2D4 DCDU gUnknown_0300344C
_0801A2D8 DCDU gUnknown_080507A8
_0801A2DC DCDU 0x000004CC
_0801A2E0 DCDU 0x00000544
18
	DCB 0x20, 0x00, 0x00, 0x00
_0801A2E8 DCDU 0x000005BC
_0801A2EC DCDU gUnknown_08051040
_0801A2F0 DCDU gUnknown_03003EA0
_0801A2F4 DCDU gUnknown_0300345C
_0801A2F8 DCDU gUnknown_03003468
_0801A2FC DCDU gUnknown_03003EA8
19
	DCB 0x42, 0x67, 0x4D, 0x65, 0x6E, 0x75, 0x4D, 0x61, 0x67, 0x69, 0x63, 0x00
_0801A30C DCDU gUnknown_03003450
_0801A310 DCDU gUnknown_03003E98
_0801A314 DCDU 0x00000CA8
_0801A318 DCDU 0x0000FFFF
20
	str r0, [r5, #0x50]
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0x58
	movs r1, #0x38
	str r1, [sp, #8]
	str r2, [sp]
	movs r0, #0x60
	str r0, [sp, #4]
	movs r2, #0
	movs r1, #0
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	add r1, pc, #0x4
	subs r1, #0x64
	movs r2, #0
	adds r0, r5, #0
	bl sub_80137F8
	movs r2, #0xff
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x88
	ldr r0, _0801A724
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	movs r2, #0
	movs r1, #0
	adds r3, r6, #0
	adds r0, r4, r0
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	add r1, pc, #0x4
	subs r1, #0x98
	movs r2, #0
	adds r0, r5, #0
	bl sub_80137F8
	ldr r0, _0801A728
	ldr r0, [r0]
	bl sub_800116A
	ldr r5, _0801A72C
	str r0, [r7]
	ldr r1, [r5]
	ldr r2, _0801A730
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	movs r2, #0
	bl sub_80007A0
	movs r0, #0xb6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x32
	strh r0, [r3, #0x2a]
	ldr r0, [r7]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %21
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
21
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_8000914
	movs r2, #0xff
	ldr r1, _0801A734
	str r2, [sp, #0xc]
	movs r2, #0x30
	movs r0, #0xc9
	lsls r0, r0, #3
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, r4, r0
	movs r3, #0x14
	adds r6, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, [r5]
	movs r3, #0xff
	adds r0, #0xb0
	ldrb r2, [r0, #3]
	ldrb r1, [r0, #2]
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #0x4d
	movs r2, #0
	adds r0, r6, #0
	bl sub_8013946
	ldr r0, [r5]
	adds r0, #0xb0
	ldrb r5, [r0, #2]
	adds r0, r5, #0
	bl sub_8040684
	adds r6, r0, #0
	cmp r5, #5
	bhi %22
	adds r6, r5, #0
	b %23
22
	cmp r6, #0
	bne %23
	movs r6, #5
23
	movs r5, #0
24
	ldr r0, _0801A728
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	movs r2, #0x1b
	lsls r2, r2, #6
	adds r1, r1, r4
	adds r7, r1, r2
	movs r1, #1
	cmp r5, r6
	str r0, [r7]
	blo %25
	movs r1, #0
25
	ldr r2, _0801A738
	adds r1, r1, r2
	bl sub_800065C
	movs r0, #0x13
	muls r0, r5
	adds r0, #0x14
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x3e
	strh r0, [r3, #0x2a]
	ldr r0, [r7]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %26
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
26
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #5
	blo %24
	movs r1, #0
	adds r0, r4, #0
	bl sub_8019F60
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x44
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

