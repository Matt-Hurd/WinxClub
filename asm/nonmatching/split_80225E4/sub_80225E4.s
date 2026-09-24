	thumb_func_start sub_80225E4
	push {r4, r5, r6, lr}
	movs r5, #0
	adds r4, r0, #0
	adds r0, #0xf0
	sub sp, #0x10
	strb r5, [r0, #0xa]
	strb r5, [r0, #0xb]
	strb r5, [r0, #0xc]
	strb r5, [r0, #9]
	strb r5, [r0, #8]
	str r5, [r4]
	str r5, [r4, #4]
	add r0, pc, #0x214
	bl maybeLoadOrRenderBgImage
	ldr r6, _08022824
	ldr r0, [r6]
	cmp r0, #0
	beq %2
	bl sub_800B72A
	cmp r0, #0
	beq %1
	ldr r0, [r6]
	bl sub_800B6A8
	cmp r0, #0
	beq %2
1
	ldr r0, _08022828
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
2
	adds r1, r4, #0
	adds r1, #8
	adds r3, r5, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r2, #4
	movs r0, #0x90
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0xa
	adds r0, r4, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp]
	movs r6, #0x44
	adds r3, r6, #0
	movs r2, #0
	adds r0, #0x79
	movs r1, #1
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r1, #1
	adds r0, r5, #0
	bl sub_8014864
	add r1, pc, #0x4
	subs r1, #0xa0
	movs r2, #0
	adds r0, r5, #0
	bl sub_80137F8
	movs r2, #4
	str r2, [sp, #0xc]
	movs r0, #0x90
	str r0, [sp, #4]
	movs r2, #0x28
	movs r1, #0x18
	str r1, [sp, #8]
	str r2, [sp]
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	movs r1, #1
	movs r3, #0xf0
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r1, #0xff
	adds r1, #0x58
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	movs r2, #4
	movs r0, #0x90
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x28
	movs r0, #0x4d
	movs r1, #0x30
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0
	adds r3, r6, #0
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #5
	adds r0, r5, #0
	bl sub_80147FA
	movs r1, #1
	adds r0, r5, #0
	bl sub_8014B02
	ldr r0, [r5]
	ldr r1, [r0, #0x2c]
	adds r2, r1, r0
	movs r1, #1
	adds r0, r5, #0
	bl __call_via_r2
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x138
	bl sub_80137F8
	bl FadeToImage
	movs r0, #0x17
	lsls r0, r0, #5
	adds r4, r4, r0
	movs r5, #0x10
	movs r2, #0x3f
	movs r1, #8
	adds r0, r4, #0
	strb r5, [r4, #6]
	bl sub_8004784
	ldrb r2, [r4, #6]
	subs r1, r5, r2
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_80225E4

