	thumb_func_start sub_8005044
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #3
	lsrs r0, r1, #2
	lsrs r1, r2, #2
	lsls r1, r1, #2
	lsls r0, r0, #2
	stm r4!, {r0, r1}
	subs r4, #8
	movs r2, #0
	str r2, [r4, #0xc]
	subs r1, r1, r0
	bl __16__rt_memclr
	movs r2, #0
	movs r1, #0
	ldr r0, [r4]
	bl sub_803F07C
	ldr r0, [r4, #4]
	ldr r1, [r4]
	subs r0, #0xc
	movs r2, #0
	bl sub_803F07C
	ldr r0, [r4]
	str r4, [r0, #4]
	ldr r0, [r4]
	adds r0, #8
	ldr r1, [r0]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #5
	str r1, [r0]
	ldr r0, [r4, #4]
	subs r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #6
	str r1, [r0]
	movs r0, #0x18
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	adds r0, #4
	str r0, [r4, #8]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3
	thumb_func_end sub_8005044

