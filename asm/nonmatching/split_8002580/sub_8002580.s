	thumb_func_start sub_8002580
sub_8002580
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne %2
	ldr r0, _0800280C
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	ldr r0, _08002810
	movs r1, #0
	str r0, [r4]
	ldr r0, _08002814
	movs r2, #0
	str r4, [r0]
	ldr r0, _08002818
	movs r3, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc
	stm r0!, {r1, r2, r3}
	movs r6, #1
	lsls r6, r6, #0xb
	adds r1, r6, #0
	stm r0!, {r3}
	adds r5, r0, #0
	bl __16__rt_memclr_w
	adds r1, r4, r6
	movs r0, #0
	str r0, [r1, #0x20]
	str r5, [r1, #0x1c]
	ldr r0, [r1, #0x28]
	movs r2, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r2
	str r0, [r1, #0x28]
	adds r0, r4, #0
	b %1

