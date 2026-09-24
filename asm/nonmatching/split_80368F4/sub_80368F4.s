	thumb_func_start sub_80368F4
sub_80368F4
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _08036B68
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %1
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
1
	lsls r0, r1, #0x10
	movs r1, #0xe2
	ldrh r1, [r1, r4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %2
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %2
	bl sub_8000914
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

