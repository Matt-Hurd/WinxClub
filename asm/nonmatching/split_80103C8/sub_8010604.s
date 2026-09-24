	thumb_func_start sub_8010604
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080106A4
	adds r5, r1, #0
	adds r0, r4, r0
	movs r2, #0x1a
	bl __rt_memcpy_w
	ldrh r0, [r5, #0x16]
	ldr r2, _080106A8
	cmp r0, r2
	bne %18
	ldr r0, [r4, #0xc]
	movs r1, #0xf0
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	strh r0, [r5, #0x16]
18
	ldrh r0, [r5, #0x18]
	cmp r0, r2
	bne %19
	ldr r0, [r4, #0xc]
	movs r1, #0xa0
	lsrs r0, r0, #0x16
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	strh r0, [r5, #0x18]
19
	movs r3, #0x16
	ldrsh r0, [r5, r3]
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	lsls r3, r1, #4
	subs r1, r3, r1
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x90
	str r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r3, r2, r1
	movs r1, #0x17
	lsls r1, r1, #8
	adds r5, r4, r1
	ldr r1, [r5, #0x18]
	ldr r2, _080106AC
	bl __call_via_r3
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r3, r2, r1
	ldr r2, _080106AC
	ldr r1, [r5, #0x1c]
	bl __call_via_r3
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8010604
