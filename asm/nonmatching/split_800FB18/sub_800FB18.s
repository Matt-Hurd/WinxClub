	thumb_func_start sub_800FB18
sub_800FB18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq %1
	ldr r2, [r4, #8]
	movs r1, #1
	lsls r1, r2
	adds r1, #0x10
	bl __16__rt_memclr
1
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x48
	adds r0, #0x14
	bl __16__rt_memclr_w
	movs r0, #8
	str r0, [r4, #0x5c]
	pop {r4}
	pop {r3}
	bx r3

