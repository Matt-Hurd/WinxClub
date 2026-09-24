	thumb_func_start sub_8010920
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08010994
	adds r5, r1, #0
	adds r7, r2, #0
	movs r3, #0
	movs r2, #0x4c
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #8
	movs r2, #0x4c
	adds r6, r0, #0
	bl __rt_memcpy_w
	adds r0, r6, #0
	adds r0, #0xc
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #0xc
	adds r5, r0, r5
	cmp r7, #0
	bne %16
	ldr r0, _08010998
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8010746
	adds r0, r4, #0
	ldr r1, [r4, #4]
	bl sub_80103EC
	movs r2, #1
	movs r1, #0
	adds r0, r4, #0
	bl sub_80106BC
16
	ldr r1, [r4, #8]
	movs r0, #1
	lsls r1, r1, #0x18
	bne %17
	movs r0, #0
17
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8010920
