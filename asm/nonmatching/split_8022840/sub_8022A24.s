	thumb_func_start sub_8022A24
sub_8022A24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	add r0, sp, #0x48
	bl sub_80046F8
	ldr r1, _08022C2C
	movs r2, #0xc
	adds r1, #0x18
	add r0, sp, #0x3c
	bl __16__rt_memcpy
	ldr r0, _08022C2C
	add r3, sp, #0
	subs r0, #0xa
	ldrh r1, [r0]
	movs r4, #0
	strh r1, [r3, #0x38]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0x3a]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x30]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x32]
	ldrh r1, [r0, #8]
	movs r0, #0xff
	adds r0, #0x81
	strh r1, [r3, #0x34]
	strb r4, [r0, r5]
	movs r0, #0x2f
	lsls r0, r0, #4
	adds r2, r5, r0
	str r2, [sp, #0x58]
	ldr r0, _08022C38
	strb r4, [r2, #8]
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r2, [sp, #0x58]
	strb r1, [r2, #9]
	ldrb r1, [r0, #1]
	ldr r2, [sp, #0x58]
	strb r1, [r2, #0xa]
	ldrb r0, [r0, #2]
	ldr r2, [sp, #0x58]
	strb r0, [r2, #0xb]
	str r4, [r5]
	ldr r0, _08022C3C
	str r4, [r5, #4]
	ldr r0, [r0]
	bl sub_80050FA
	add r6, sp, #4
	adds r0, r6, #0
	bl sub_8001A60
	ldr r0, _08022C40
	add r1, pc, #0x1AC
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r6, #0
	ldr r6, _08022C54
	str r0, [sp, #4]
	ldr r0, [r6]
	bl sub_800D9E0
	ldr r0, _08022C58
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r6]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r1, r5, #0
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
	adds r1, r5, #0
	adds r1, #8
	adds r3, r4, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	movs r6, #0
15
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r4, r0, r5
	adds r4, #0xff
	adds r4, #0x85
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	movs r3, #2
	ldr r1, [r0, #0x14]
	adds r7, r1, r0
	add r1, sp, #0x3c
	lsls r0, r6, #2
	adds r2, r0, r1
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r0]
	adds r0, r4, #0
	bl __call_via_r7
	ldr r0, [r4]
	movs r2, #0x10
	ldr r1, [r0, #0x10]
	adds r3, r1, r0
	add r0, sp, #0x38
	ldrb r1, [r0, r6]
	adds r0, r4, #0
	bl __call_via_r3
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r2, #0xff
	ldr r1, [r0, #0x20]
	movs r3, #0
	adds r7, r1, r0
	movs r1, #4
	adds r0, r4, #0
	bl __call_via_r7
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	lsls r0, r6, #1
	add r1, sp, #0x30
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %15
	movs r6, #0
16
	ldr r0, _08022C28
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r2, r1, r5
	movs r1, #0xb
	lsls r1, r1, #6
	adds r7, r2, r1
	str r0, [r7, #0x2c]
	ldr r1, _08022C5C
	bl sub_800065C
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x19
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	movs r0, #0x40
	strh r0, [r3, #0x2e]
	ldr r0, [r7, #0x2c]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #5
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r4, #0
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %17
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
17
	movs r1, #1
	ldr r0, [r7, #0x2c]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %16
	movs r6, #0
18
	movs r0, #0x23
	muls r0, r6
	adds r0, #0x2d
	str r0, [sp, #0x54]
	lsls r0, r6, #3
	movs r4, #0
	adds r1, r0, r5
	str r1, [sp, #0x50]
19
	ldr r0, _08022C28
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x50]
	lsls r2, r4, #2
	adds r1, r1, r2
	movs r2, #0xb
	lsls r2, r2, #6
	b %20
	ALIGN
_08022C28 DCDU gUnknown_03003448
_08022C2C DCDU gUnknown_08050FF8
_08022C30 DCDU gUnknown_03003460
_08022C34 DCDU gUnknown_0300345C
_08022C38 DCDU gUnknown_03003D30
_08022C3C DCDU gUnknown_03003468
_08022C40 DCDU gUnknown_03003EA8
_08022C44 DCDU 0x654D6742
_08022C48 DCDU 0x704F756E
_08022C4C DCDU 0x6E6F6974
_08022C50 DCDU 0x00000073
_08022C54 DCDU gUnknown_03003450
_08022C58 DCDU gUnknown_03003E98
_08022C5C DCDU 0x00000CA8
20
	adds r7, r1, r2
	ldr r1, _08022F68
	str r0, [r7, #0x3c]
	adds r1, r4, r1
	bl sub_800065C
	lsls r1, r4, #6
	adds r1, #0x5f
	add r3, sp, #0
	ldr r0, [sp, #0x54]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r7, #0x3c]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x3c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %21
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
21
	movs r1, #1
	ldr r0, [r7, #0x3c]
	bl sub_80401E4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %19
	ldr r0, _08022F6C
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	movs r2, #3
	lsls r2, r2, #8
	adds r1, r1, r5
	adds r4, r1, r2
	movs r1, #0xff
	movs r2, #0
	adds r1, #0xf1
	str r0, [r4, #0x14]
	bl sub_80007A0
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	movs r0, #0xa0
	strh r0, [r3, #0x2e]
	ldr r0, [r4, #0x14]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r4, #0x14]
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
	bmi %22
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
22
	ldr r0, [r4, #0x14]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x14]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	bhs %23
	b %18
23
	ldr r2, [sp, #0x58]
	movs r0, #2
	strb r0, [r2, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_80228D2
	ldr r2, [sp, #0x58]
	movs r0, #1
	strb r0, [r2, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_80228D2
	movs r4, #0
	ldr r2, [sp, #0x58]
	movs r1, #0
	adds r0, r5, #0
	strb r4, [r2, #8]
	bl sub_80228D2
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x48
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

