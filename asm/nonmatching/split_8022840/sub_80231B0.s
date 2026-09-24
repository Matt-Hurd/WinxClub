	thumb_func_start sub_80231B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	add r0, sp, #0x20
	bl sub_80046F8
	movs r2, #0x10
	mov r4, sp
	adds r4, r4, r2
	adds r0, r4, #0
	ldr r1, _08023384
	bl __16__rt_memcpy
	ldr r0, _08023384
	add r3, sp, #0
	subs r0, #0xc
	ldrh r1, [r0]
	strh r1, [r3, #0xc]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0xe]
	ldrh r1, [r0, #4]
	strh r1, [r3, #4]
	ldrh r1, [r0, #6]
	strh r1, [r3, #6]
	ldrh r1, [r0, #8]
	strh r1, [r3, #8]
	ldrh r1, [r0, #0xa]
	movs r0, #0xff
	adds r0, #0x71
	strh r1, [r3, #0xa]
	movs r1, #0
	strb r1, [r0, r5]
	movs r0, #0x35
	lsls r0, r0, #4
	adds r3, r5, r0
	str r3, [sp, #0x30]
	ldr r0, _08023388
	strb r1, [r3, #8]
	ldr r0, [r0]
	ldrb r2, [r0]
	ldr r3, [sp, #0x30]
	strb r2, [r3, #9]
	ldrb r2, [r0, #1]
	ldr r3, [sp, #0x30]
	strb r2, [r3, #0xa]
	ldrb r0, [r0, #2]
	ldr r3, [sp, #0x30]
	strb r0, [r3, #0xb]
	str r1, [r5]
	str r1, [r5, #4]
	add r0, pc, #0x174
	bl maybeLoadOrRenderBgImage
	ldr r6, _08023380
	ldr r0, [r6]
	cmp r0, #0
	beq %60
	bl sub_800B72A
	cmp r0, #0
	beq %59
	ldr r0, [r6]
	bl sub_800B6A8
	cmp r0, #0
	beq %60
59
	ldr r0, _08023374
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
60
	movs r6, #0
61
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r4, r0, r5
	adds r4, #0xff
	adds r4, #0x75
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
	add r1, sp, #0x10
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
	add r0, sp, #0xc
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
	add r1, sp, #4
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #4
	blo %61
	movs r6, #0
	adds r1, r5, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	ldr r0, _08023378
	ldr r0, [r0]
	bl sub_800116A
	movs r1, #0xd
	lsls r1, r1, #6
	adds r4, r5, r1
	movs r1, #0xff
	movs r2, #0
	adds r1, #0xee
	str r0, [r4, #0x14]
	bl sub_80007A0
	ldr r0, [r4, #0x14]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r6
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %62
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
62
	ldr r0, [r4, #0x14]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x14]
	bl sub_80401E4
	movs r6, #0
63
	lsls r0, r6, #5
	adds r0, #0xf
	str r0, [sp, #0x2c]
	lsls r0, r6, #3
	movs r4, #0
	adds r1, r0, r5
	str r1, [sp, #0x28]
64
	ldr r0, _08023378
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x28]
	lsls r2, r4, #2
	adds r1, r1, r2
	movs r2, #0xd
	lsls r2, r2, #6
	adds r7, r1, r2
	ldr r1, _08023398
	str r0, [r7, #0x20]
	adds r1, r4, r1
	bl sub_800065C
	lsls r1, r4, #6
	adds r1, #0x5c
	add r3, sp, #0
	ldr r0, [sp, #0x2c]
	strh r1, [r3]
	strh r0, [r3, #2]
	ldr r0, [r7, #0x20]
	mov r1, sp
	bl sub_8040034
	ldr r0, [r7, #0x20]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #5
	b %65
	ALIGN
_08023374 DCDU gUnknown_0300345C
_08023378 DCDU gUnknown_03003448
_0802337C DCDU gUnknown_08050FF8
_08023380 DCDU gUnknown_03003460
_08023384 DCDU gUnknown_08051028
_08023388 DCDU gUnknown_03003D30
_0802338C DCDU 0x654D6742
_08023390 DCDU 0x614D756E
_08023394 DCDU 0x00006E69
_08023398 DCDU 0x00000CF3
65
	movs r3, #0
	orrs r1, r3
	strh r1, [r0, #0x2a]
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %66
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
66
	movs r1, #1
	ldr r0, [r7, #0x20]
	bl sub_80401E4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %64
	ldr r0, _080235CC
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	movs r2, #7
	lsls r2, r2, #7
	adds r1, r1, r5
	adds r4, r1, r2
	movs r1, #0xff
	movs r2, #0
	adds r1, #0xf1
	str r0, [r4]
	bl sub_80007A0
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r4]
	mov r1, sp
	bl sub_8040034
	ldr r0, [r4]
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
	bmi %67
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
67
	ldr r0, [r4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	bhs %68
	b %63
68
	ldr r3, [sp, #0x30]
	movs r0, #2
	strb r0, [r3, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_8022FFC
	ldr r3, [sp, #0x30]
	movs r0, #1
	strb r0, [r3, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_8022FFC
	ldr r3, [sp, #0x30]
	movs r0, #0
	strb r0, [r3, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_8022FFC
	bl FadeToImage
	movs r1, #0
	adds r0, r5, #0
	bl sub_80230DC
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #4
	movs r1, #0xc
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80231B0


