	thumb_func_start sub_8001868
sub_8001868
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0xff
	lsls r0, r0, #8
	adds r7, r2, #0
	adds r5, r1, #0
	adds r4, r3, #0
	cmp r3, #0
	bge %14
	adds r4, r4, r0
	b %15
14
	cmp r4, r0
	ble %15
	subs r4, r4, r0
15
	add r0, pc, #0x1B0
	ldm r0!, {r0, r1}
	adds r2, r4, #0
	bl __16_ll_mulls
	add r6, pc, #0x1AC
	ldm r6!, {r2, r3}
	bl __16_ll_sdiv
	movs r1, #1
	lsls r1, r1, #0x10
	subs r6, r7, r5
	cmp r0, r1
	bge %17
	add r0, pc, #0x194
	ldm r0!, {r0, r1}
	adds r2, r6, #0
	bl __16_ll_mulls
	add r6, pc, #0x190
	ldm r6!, {r2, r3}
	subs r6, #8
	bl __16_ll_sdiv
	adds r1, r0, #0
	adds r0, r4, #0
	bl __16_ll_mulss
	ldm r6!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	add r2, pc, #0x178
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r0, r0, r5
16
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	adds r0, r4, #0
	asrs r1, r4, #0x1f
	movs r2, #9
	bl __16_ll_shift_l
	add r2, pc, #0x158
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	movs r1, #1
	lsls r1, r1, #0x10
	cmp r0, r1
	bge %18
	adds r0, r7, #0
	b %16
18
	add r0, pc, #0x154
	ldm r0!, {r0, r1}
	adds r2, r4, #0
	bl __16_ll_mulls
	add r7, pc, #0x138
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	movs r1, #1
	lsls r1, r1, #0x11
	cmp r0, r1
	bge %19
	ldr r0, _08001A54
	subs r0, r0, r4
	adds r1, r6, #0
	bl __16_ll_mulss
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r2, r0, #0
	add r0, pc, #0x10C
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	ldm r7!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	add r2, pc, #0x104
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r0, r0, r5
	b %16
19
	adds r0, r5, #0
	b %16

