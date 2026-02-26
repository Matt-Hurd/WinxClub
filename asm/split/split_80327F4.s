	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802E4EE
	IMPORT sub_803F898

	thumb_func_start sub_80327F4

sub_80327F4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r5, #1
	lsls r5, r5, #0x1d
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	lsrs r6, r5, #4
	lsrs r7, r5, #1
	cmp r0, #3
	bne %2
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	ldr r0, [r4, #4]
	cmp r0, #0
	beq %1
	bl sub_803F898
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r6
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r1, r2
	orrs r1, r5
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi %1
	lsls r0, r5, #1
	orrs r0, r1
	str r0, [r4, #0x2c]
1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_802E4EE
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %1
	ldr r0, [r4, #4]
	bl sub_803F898
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #4]
	bics r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r6
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #0x30]
	b %1

	END
