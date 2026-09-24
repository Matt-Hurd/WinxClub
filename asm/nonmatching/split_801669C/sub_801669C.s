	thumb_func_start sub_801669C
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x18
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _08016A9C
	str r0, [r4]
	movs r0, #1
	strh r0, [r4, #4]
	ldr r0, _08016AA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r0, #0
	str r0, [r4, #0xc]
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	b %1
	thumb_func_end sub_801669C

