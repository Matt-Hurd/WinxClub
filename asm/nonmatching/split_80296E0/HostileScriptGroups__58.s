	thumb_func_start HostileScriptGroups__58
HostileScriptGroups__58
	push {r4, r5, r6, lr}
	ldr r6, _0802B268
	adds r4, r0, #0
	ldr r0, [r6]
	sub sp, #8
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	bhi %175
	lsls r0, r1, #9
	bpl %177
175
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r1, [r0, #0x38]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne %176
	movs r2, #7
	ldr r1, [r5, #0x14]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r5, #0x14]
	ldr r1, [r0, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x70]
	asrs r2, r1, #1
	str r1, [r4, #0x74]
	adds r1, r1, r2
	str r1, [r4, #0x70]
176
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r6]
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	adds r4, #0x90
	adds r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
177
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

