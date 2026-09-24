	thumb_func_start sub_8016F50
sub_8016F50
	push {r3, lr}
	ldr r0, [r1]
	movs r3, #4
	ldrsh r1, [r0, r3]
	cmp r1, #0
	ble %26
	ldrh r0, [r0, #4]
	movs r1, #1
	bl sub_803FEF8
25
	add sp, #4
	pop {r3}
	bx r3
26
	NEGS r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b %25

