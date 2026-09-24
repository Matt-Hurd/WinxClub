	thumb_func_start sub_8012468
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r2, [r0, #0x34]
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r2, r4
	blo %2
	adds r2, r4, #0
	adds r1, r5, #0
	adds r0, r6, #0
	bl gUnknown_03002F48
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	cmp r2, #0
	beq %3
	lsrs r0, r2, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r5, r0, r5
	subs r4, r4, r2
	adds r0, r6, #0
	bl gUnknown_03002F48
3
	adds r0, r6, #0
	bl sub_80124C8
	ldr r2, [r6, #0x34]
	cmp r2, r4
	blo %4
	adds r2, r4, #0
	adds r1, r5, #0
	adds r0, r6, #0
	bl gUnknown_03002F48
	b %1
4
	lsrs r0, r2, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r5, r0, r5
	subs r4, r4, r2
	adds r0, r6, #0
	bl gUnknown_03002F48
	cmp r4, #0
	bne %3
	b %1
	thumb_func_end sub_8012468

