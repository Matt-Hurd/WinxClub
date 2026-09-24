	thumb_func_start sub_8028B2C
sub_8028B2C
	ldr r1, _08028BDC
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	cmp r1, #0
	beq %43
	movs r2, #0x13
	lsls r2, r2, #8
	adds r4, r0, r2
	ldrb r0, [r4, #5]
	cmp r0, #7
	bhs %43
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
36
	DCB 0x0B
37
	DCB 0x04
38
	DCB 0x0E
39
	DCB 0x04
40
	DCB 0x0E
41
	DCB 0x32
42
	DCB 0x1C, 0x00
loc_8028b54
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne %43
	strb r0, [r4, #4]
	strb r0, [r4, #5]
43
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_8028b68
	ldr r5, _08028BDC
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne %43
	movs r0, #1
	strb r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #5]
	ldr r0, [r5]
	bl sub_800B6AC
	b %43
loc_8028b84
	ldr r5, _08028BDC
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne %43
	ldr r0, [r5]
	bl sub_800B6AC
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r5]
	bl sub_800B6EC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	b %43
loc_8028bb0
	ldr r0, _08028BE0
	ldr r0, [r0]
	bl sub_800B764
	ldrb r1, [r4, #6]
	cmp r0, r1
	beq %43
	ldr r5, _08028BDC
	ldr r0, [r5]
	bl sub_800B6AC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	strb r0, [r4, #5]
	b %43
