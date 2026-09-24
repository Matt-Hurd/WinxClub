	thumb_func_start sub_8000948
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	bmi %12
	ldrb r0, [r4, #3]
	ldr r2, _08000B90
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #3]
	ldr r1, [r4, #8]
	adds r1, r1, r2
	str r1, [r4, #8]
	cmp r0, #0
	bne %12
	ldr r0, [r4, #0x48]
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1c
	cmp r0, #0xa
	bhs %12
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
2
	DCB 0x04
3
	DCB 0x20
4
	DCB 0x1D
5
	DCB 0x1D
6
	DCB 0x1D
7
	DCB 0x1D
8
	DCB 0x1D
9
	DCB 0x45
10
	DCB 0x50
11
	DCB 0x71
loc_8000986
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_shift_l
	mov r2, pc
	subs r2, #0x94
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
12
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_80009be
	ldr r0, _08000B94
	ldr r1, [r4, #0x44]
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0x2c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	ldr r1, [r1]
	lsrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_shift_l
	mov r2, pc
	subs r2, #0xe2
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	b %12
loc_8000a08
	ldr r0, _08000B8C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	b %12
loc_8000a1e
	ldr r5, _08000B8C
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	lsls r1, r0, #0x1f
	beq %12
	lsls r0, r0, #0x1f
	bpl %12
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8001232
	ldr r0, [r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4]
	lsls r0, r0, #0x16
	bmi %12
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %12
	ldr r0, _08000B94
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD28
	b %12
loc_8000a60
	ldr r0, [r4, #0x48]
	ldr r0, [r0]
	ldr r2, [r4, #0x4c]
	lsrs r1, r0, #0x18
	adds r0, r4, #0
	bl __call_via_r2
	cmp r0, #0
	beq %13
	cmp r0, #7
	bne %12
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, _08000B8C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	b %12
13
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_shift_l
	add r2, pc, #0xEC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	b %12
	thumb_func_end sub_8000948

