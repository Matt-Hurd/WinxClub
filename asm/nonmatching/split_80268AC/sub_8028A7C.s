	thumb_func_start sub_8028A7C
	push {r3, r4, r5, r6, r7, lr}
24
	adds r6, r0, #0
	ldr r0, _08028BDC
	adds r4, r2, #0
	ldr r0, [r0]
	cmp r0, #0
	beq %33
	movs r2, #0x13
	lsls r2, r2, #8
	adds r5, r6, r2
	strb r1, [r5, #5]
	cmp r1, #7
	bhs %33
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
25
	DCB 0x12
26
	DCB 0x04
27
	DCB 0x15
28
	DCB 0x1A
29
	DCB 0x2A
30
	DCB 0x3F
31
	DCB 0x2F, 0x00
loc_8028aa8
	cmp r4, #0xff
	beq %32
	ldr r5, _08028BDC
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
32
	ldr r0, _08028BDC
	movs r1, #0x40
	ldr r0, [r0]
	bl sub_800B6EC
33
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
loc_8028aca
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b %33
loc_8028ad4
	cmp r4, #0xff
	beq %34
	ldr r5, _08028BDC
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
34
	ldr r0, _08028BDC
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r0]
	bl sub_800B6EC
	b %33
loc_8028af4
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b %33
loc_8028afe
	ldr r7, _08028BDC
	bl sub_800B72A
	cmp r0, #0
	beq %35
	movs r1, #0xff
	mvns r1, r1
	ldr r0, [r7]
	bl sub_800B6EC
	strb r4, [r5]
	b %33
35
	adds r2, r4, #0
	movs r1, #3
	adds r0, r6, #0
	b %24
loc_8028b1e
	ldr r0, _08028BE0
	ldr r0, [r0]
	bl sub_800B764
	strb r0, [r5, #6]
	strb r4, [r5]
	b %33
	thumb_func_end sub_8028A7C

