	thumb_func_start ToggleObjectGroup__10
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x20]
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	beq %6
	ldr r0, _08035B94
	ldr r6, [r4, #0x2c]
	movs r7, #0
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	mvns r7, r7
	adds r1, r7, #0
	cmp r2, #0
	beq %2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
2
	ldr r0, [r5, #0x20]
	lsls r1, r1, #0x10
	lsls r2, r0, #0x14
	lsrs r2, r2, #0x14
	lsrs r1, r1, #0x10
	cmp r1, r2
	bne %6
	ldr r6, [r4, #0x2c]
	ldr r1, [r6]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %6
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	strh r0, [r4, #0x18]
	ldr r0, _08035B94
	ldr r0, [r0]
	ldr r1, [r6, #0x44]
	cmp r1, #0
	beq %3
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r7, r0, #3
3
	ldr r1, [r5, #0x20]
	lsls r0, r7, #0x10
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %4
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
4
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %5
	bl sub_8000914
5
	ldr r0, [r5, #0x24]
	lsls r1, r0, #4
	lsrs r0, r1, #0x18
	beq %6
	ldr r0, _08035B98
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne %6
	bl sub_8028C2E
6
	adds r0, r4, #0
	bl m10__7DefaultFv
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end ToggleObjectGroup__10

