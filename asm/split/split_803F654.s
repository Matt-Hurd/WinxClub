	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_803F654

sub_803F654
	push {r4, r5, r6}
	adds r2, r0, #0
	adds r2, #0x80
	movs r4, #1
	lsls r4, r4, #0x11
	ldr r3, [r2, #0x2c]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0xe
	bics r3, r4
	orrs r1, r3
	lsls r3, r1, #0xe
	str r1, [r2, #0x2c]
	lsrs r5, r4, #6
	cmp r3, #0
	ldr r1, [r0, #0x2c]
	bge %3
	ldr r3, [r1]
	lsls r4, r3, #0x15
	lsrs r4, r4, #0x1f
	beq %1
	lsls r4, r3, #0x14
	asrs r4, r4, #0x1f
	adds r4, #1
	lsls r4, r4, #0x1f
	lsrs r4, r4, #0x14
	bics r3, r5
	orrs r3, r4
	str r3, [r1]
1
	ldr r1, [r0, #0x70]
	str r1, [r2, #0x20]
	movs r1, #0
	str r1, [r0, #0x70]
2
	pop {r4, r5, r6}
	bx lr
3
	ldr r4, [r1]
	lsls r3, r4, #0x14
	lsrs r6, r3, #0x1f
	beq %4
	asrs r3, r3, #0x1f
	adds r3, #1
	lsls r3, r3, #0x1f
	lsrs r3, r3, #0x14
	bics r4, r5
	orrs r3, r4
	str r3, [r1]
4
	ldr r1, [r2, #0x20]
	str r1, [r0, #0x70]
	b %2

	END
