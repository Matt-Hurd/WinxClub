	thumb_func_start sub_800C164
sub_800C164
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	cmp r1, #0x1f
	beq %47
	lsls r1, r1, #1
	adds r2, r1, r0
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r1, r2, r1
	ldrh r1, [r1]
	ldr r2, _0800C44C
	cmp r1, r2
	beq %47
	bl sub_800C134
	movs r1, #0x1f
	ldr r0, [r4]
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
47
	pop {r4}
	pop {r3}
	bx r3

